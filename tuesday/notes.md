# DSVIL Tuesday June 5, 2018

## DATA VISUALIZATION, PART 1

Speaker: Angela Zoss

- data visualize: anything that converts data sources into a visualization representation
  - charts, graphs, maps, even just tables
- http://guides.library.duke.edu/datavis

### Why visualize?

- easy to understand patterns/relationships among the data
- quality assurance without having to scrutinize the data
- telling a story

### Telling a story (techniques)

- distilling a complex dataset
- draws on personal experience
- setting/title
- good balance between what information you need and not overwhelming the audience
  - not labeling every country; giving different colors to regions, but not countries
- adds reference frames (memory devices) for more relationships (developed vs developing)
- selective focus (ref frames, ref points, ghosting)

### Libraries and visualization

- teachers of visualization
- Data and Visualization Services department at Duke
  - High-end computing
  - Cleaning/arranging data, data management, data visualization
- workshops; videos of past workshops
- online resources
  - website, libGuides, blog, Github account
- outreach
  - weekly visualization talks
  - guest lectures in courses
  - visualization exhibits
  - student data visualization contest
  - collaborate on campus initiatives (DataFest)

### Discussion: How you see viz working at your library

  - bibliometrics viz
  - understanding collaborations among faculty
  - GIS

### Upgrade points, one-on-one consultations

  - choosing a chart type
  - graphic design improvements
    - Google "choosing a good chart"

### Types of visualization

  - basic charts and graphs
  - maps (geographic and spatial)
    - choroplath, cartogram, hexagonal, dorling
  - statistical graphics
  - trees and hierarchies
    - dendrogram, sunburst, tree map
  - networks
    - node link diagram, tube/subway map
  - text visualization
    - word cloud
  - scientific visualization

### Effective design choices

  - rainbow color maps are usually bad design choices: they impair understanding
    - ranked coloring (monochromatic or ranked in depth) is better
    - http://colorbrewer2.org is a good tool for choosing colors

### Areas of graphic design

#### Distortion

  - axis should start at zero
    - there are special cases like the stock market
  - 3D distorts area (3D pie chart)
  - irregular gaps between dates represent in regular intervals is a problem (make sure regular/sequential dates are shown)

#### Order

  - order tables meaningfully
    - in tables, most important things go first or are emphasized
    - in bar charts, order highest to lowest
    - in pie charts, order by size (color depth), unless there's a natural order (high school, under grad, grad)

#### Color

  - Remove distractions
    - potentially remove grid lines, use filled/unfilled shapes of the same type (circles) instead of different shapes
  - Limit colors when possible
  - Label directly
  - Use color to group
    - group data elements by color (upward trends, downward trends)
  - Use color to draw attention (emphasize a specific data point)

#### Data

  - Split apart, if there's a good category or way to do so
    - Make sure that the charts are comparable (same size grid)
  - Summarization of the data
    - if you have a lot of data points that are not too different, maybe calculate the median instead

#### Text

- Keep text horizontal
  - for bar charts, sometimes rotate so the label feeds into the bar
- Annotate figures directly
  - describing the significance of a change
- Use descriptive titles
  - make a claim with the title instead of just listing out the axes labels

### Choosing charts

  - don't be afraid to try out different visualizations on your data. it might reveal issues in your data
    - node diagram versus a matrix
  - it's easier to see minute changes in bar charts than pie charts
  - it's easier to make comparisons among a lot of variables in bar charts than pie charts
  - line charts are potentially better for timelines than bar charts.
    - for continuous change in general

### Design summary

  - Keep it simple
  - Draw attention to what's important
  - Tell a story, removing unimportant stuff and adding annotations

### Data structure

  - wide vs long
    - wide data is good for comparing two or more measurements of the same entity (years of data for the same state)
    - long/tidy/tall data is good for filtering and subsetting on the fly, aggregating across measurements
      - normalized tables. when there are multiple values in a column for the same entity, it's better to have multiple rows and unique ID's for entities

## DATA VISUALIZATION, PART 2

### Pivot tables

  - pivot tables can transpose, aggregate, summarize, filter, and pipe your data
    - like making copies of your data, but retaining the original
  - pivot tables have rows, columns, and values, but you can filter as well

### Effective charts

  - a lot of ways to visualize numbers
    - http://blog.visual.ly/45-ways-to-communicate-two-quantities
  - encodings for categorical data
    - spatial (size of the squares), color hue, shape
  - http://www.datavizcatalogue.com
  - essentially, data viz is an art
  - try to gauge your audience and understand what they want

### Chart makeovers

  - Look at slides for examples

### Tools

  - Excel: low barrier
  - Tableau: fairly intuitive but expensive. free version has save limitations
  - Plot.ly: web based. a little hard to use. free version has save limitations
  - RawGraphs: web based. has non-traditional visualization options. can save as svg, which is great if you want to do post-production professionalization of the graphics

### Thinking ahead

  - different tools/charts need different types of data (Tableau needs tidy data)
  - be active about intentions
  - experiment
  - there's no "best" software. meets patrons where they are comfortable
  - don't be afraid to recommend tools you're comfortable with
  - look for resources in the slides
