# DSVIL Wednesday June 6, 2018

## BIBLIOMETRIC NETWORK ANALYSIS USING SCI2 AND GEPHI

Speaker: Kris Alpi, Danica Lewis

### Use cases

  - visualization tricks with networks
    - color, size, placements (relative closeness, space between nodes)
  - client use cases
    - looking at publications and co-authorship
      - helps make a case for funding. communicates the work somebody is doing
    - collaborations
    - adding researchers over time
  - be careful what you put in a network visualization. ppl will often accept whatever's in it

### Resources

  - Martin Grandjean
  - scottbot.something
  - WebOfKnowledge/WebOfScience is a good resources for authors/scholarship data

### Layout choices

  - Fruchterman Reingold is a popular visualization layout
  - you can color nodes and edges based on attributes (affiliation, department, etc)

### Side note

  - maybe check out the [SemanticWeb plugin](https://github.com/gephi/gephi/wiki/SemanticWebImport) for Gephi
    - this plugin is already in Tools > Plugins of Gephi

## DATA SHARING, DESCRIPTION, AND RESUSE

Session repo: https://osf.io/n9f6s/
Speaker: Thu-Mai Chistian

  - it's not enough for ppl to just publish papers. there's a need for reproducibility in order to confirm validity

### When do you share data

  - to reproduce or to verify research
  - to make results of publicly funded research available to the public
  - enable others to ask new questions of extant data
  - advance the state of research innovation

### Obstacles

  - Time and effort required to make data sharable
  - unclear or problematic ownership
  - confidentiality and privacy concerns
  - perceived risks from loss of control of the data
  - lack of incentives for sharing data

- there are a lot of funding agencies and publishing agencies that are requiring the data to be deposited in a repository

>ensure that information sufficient for a person knowledgeable about the field and techniques to reproduce results is made available

### FAIR
https://www.force11.org/fairprinciples

  - Findable
    - Example: identifier (DOI)
  - Accessible
    - retrievable by their identifier; metadata are accessible (even when the data are no longer available)
  - Interoperability
    - metadata use a formal, accessible, shared, and broadly applicable, context
  - Reusable
    - metadata have a plurality of accurate and relevant attributes
    - clear and accessible data usage license
    - metadata with provenance
    - domain-relevant metadata

### Data Management

  - find the lifecycle visual in the slides
  - data management happens throughout the whole research process
  - http://www.ddialliance.org/training/why-use-ddi
  - https://dmptool.org

### Best practices

- file naming conventions
  - have meaning file names
  - keep names relevant
  - do not use special characters,
  - use underscores, not spaces
- 321 rule for copies
  - 3 copies: 1 original, 2 backups
  - 2 copies ...
  - 1 copy in another location
- versioning
  - final copy should be read only
  - good versioning practices in general
- QA
  - code book so ppl can understand variables
  - value code consistency (what does it mean when there's a missing value)
  - record matches and counts

### Data Documentation

  - codebook
    - variable names and labels
    - value codes and labels
    - range of values
    - data types
  - README file (citation to original dataset, software used, packages/versions, list/sequence of the files, catch all for information that's not contained at other places)
    - data collections methods
    - coding info
    - variable construction
    - dataset modifications
    - original data source citation
  - analysis code
    - software version
    - commands
    - comment statements

### Metadata

  - retrieve, use, or manage
  - types: descriptive, structural, administrative
    - desc: discovery and identification
    - struct: how compound objects are structured
    - admin: use, management, encoding processes
  - metadata schema
    - dublin core
    - DataCite
    - DDI (1000+ elements)

### Data Security

  - HIPAA, FRPA
  - potentially write into consent form about "using data in other projects"
  - direct identifiers
    - names, social security numbers, phone numbers
  - indirect identifiers (might be use a combination of these to form someone's identity)
    - race/ethnicity, income, profession
  - HIPAA
    - large number of direct/indirect identifiers to be concerned with (see slides)

#### Strategies for Data Security

  - privacy technology
    - authentification
    - encrption
  - physical restrictions
    - secure data enclaves
    - offline workstations
    - server-based computation
  - legal and ethical frameworks
    - data use agreements
  - computational approaches
    - de-identification
      - variable removal
      - top-coding
      - collapsing/combining
      - sampling (randomized sample of the dataset)
      - swapping
      - disturbing
    - differential privacy
    - synthetic data
  - anonymization scheme
    - instead of redacting using a general label ([REDACTED]), use labels ([SCHOOL], [STUDENT], F/28/H)

### Data Archives

  - trusted data repositories
    - who has a specific mission for reliable long-term access, preservation
    - is the repository reputable?
    - will the repo sustain the value of the data
    - will the repo support data analysis and track data usage?
  - example repos
    - re3data.org
    - osf.io
      - good for dissemination of project materials
      - has an open api that can hook into Google Drive and Dropbox, where it will pull in files from these systems

### Closing

  - check out the session repo for resources, tools, community, etc

## DATA USE AGREEMENTS ACTIVITY

Speaker: Kris Alpi

  - Important questions to ask when choosing a journal
    - who owns the data
    - what constitutes data?
    - where do you have to store your data?
    - data sharing policies?
