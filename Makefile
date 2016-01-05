#
#  generate openregister entries for social housing
#
PROVIDERS_URL=https://www.gov.uk/government/uploads/system/uploads/attachment_data/file/481543/List_of_Registered_Providers_at_1_December_2015.xlsx
PROVIDERS_DATA=data/social-housing-provider/social-housing-provider.tsv

.PHONY: init test all clean data

all:	flake8 data

data:	$(PROVIDERS_DATA)

$(PROVIDERS_DATA):	cache/providers.tsv bin/providers.py
	mkdir -p `dirname $(PROVIDERS_DATA)`
	bin/providers.py < cache/providers.tsv > $@

cache/providers.tsv:	cache/providers.xlsx Makefile
	xlsx2csv -s 1 -d 'tab' -e -i -f "%Y-%m-%d" cache/providers.xlsx > $@

cache/providers.xlsx:
	mkdir -p cache
	curl -s $(PROVIDERS_URL) > $@

flake8:
	flake8 bin

test:
	py.test -v

clean:
	find . -name "*.pyc" | xargs rm -f
	find . -name "__pycache__" | xargs rm -rf
	rm -rf cache
	rm -rf data

init:
	pip3 install --upgrade -r requirements.txt
