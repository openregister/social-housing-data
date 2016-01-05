# Social housing register data

The data for the [social-housing-provider register](http://social-housing-provider.openregister.org), created from 
[registered providers of social housing](https://www.gov.uk/government/publications/current-registered-providers-of-social-housing) open data
maintained by the [Homes & Communities Agency](https://www.gov.uk/government/organisations/homes-and-communities-agency).

# Building

Use `make` to build register shaped data
— we recommend using a [Python virtual environment](http://virtualenvwrapper.readthedocs.org/en/latest/):

    $ mkvirtualenv -p python3 social-housing-data
    $ workon social-housing-data
    $ make init

    $ make

# Licence

The software in this project is covered by LICENSE file.

The data is [© Crown copyright](http://www.nationalarchives.gov.uk/information-management/re-using-public-sector-information/copyright-and-re-use/crown-copyright/)
and available under the terms of the [Open Government 3.0](https://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/) licence.
