URL=https://www.gov.uk/government/uploads/system/uploads/attachment_data/file/629379/List_of_Registered_Providers_at_1_July_2017.xlsx

.PHONY: init test all clean data

list.tsv: data.tsv map.py
	python3 map.py < data.tsv > $@

data.tsv:	data.xlsx Makefile
	xlsx2csv -s 1 -d 'tab' -e -i -f "%Y-%m-%d" data.xlsx > $@

data.xlsx:
	curl -Ls $(URL) > $@

flake8:
	flake8 bin

clean:
	find . -name "*.pyc" | xargs rm -f
	find . -name "__pycache__" | xargs rm -rf
	rm -rf cache

init:
	pip3 install --upgrade -r requirements.txt
