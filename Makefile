#
#  target register data
#
REGISTER=data/social-housing-provider/social-housing-provider.tsv

#
#  source HCA list
#
SOURCE=lists/hca/list.tsv

all: $(REGISTER)

$(REGISTER):	$(SOURCE)
	mkdir -p data/social-housing-provider
	cp $(SOURCE) $(REGISTER)

# remove targets
clobber:
	rm -f $(REGISTER) $(DATA) $(MAPS)

clean::
	-find . -name "*.pyc" | xargs rm -f
	-find . -name "__pycache__" | xargs rm -rf
