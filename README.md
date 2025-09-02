# ACEs and Parenting

## Project Overview
This project aims to examine the impact of **Adverse Childhood Experiences (ACEs)** on the **mental well-being of parents**, and how these effects subsequently shape their **parenting practices** and contribute to the **behavioral outcomes observed in their children**.

## Data Source
The data used in this project is drawn from **peer-reviewed journals** mainly from [BioMedCentral.com](https://capmh.biomedcentral.com/) and [ScienceDirect.com](https://www.sciencedirect.com/) which are open access to the public. 

The data in the studies was obtained from mothers in Chengdu, China and parents of students in Chiang Mai, Thailand.

See references section for citation details.

## Project Objectives
The project seeks to highlight:
1. To examine the **association between maternal ACEs** and **behavioral problems** in their **preschool offspring**. Study was conducted involving 4243 mother-child dyads in Chengdu, China. [^1]
2. To examine the **relationship between parental ACEs** and **parenting**, the **effect of mental health** which possibly **mediated parenting behaviors**. Data was obtained from 403 parents of 6–18-year-old students in Chiang Mai, Thailand,
from January to February 2023. [^2]
   
## Tools & Technologies Used
A hybrid approach integrated **SQL’s efficiency** in data extraction, schema design, and structured data management with **Python’s powerful statistical analysis** and **rich visualization** capabilities, delivering a workflow that was both efficient and insight-driven.
- **PostgreSQL**: Schema design and initial data analysis using SQL.
- **Python**: Main programming language used.
  - **SQLAlchemy + psycopg2**: For working with SQL databases directly within Python; database connection and analysis queries.
  - **Pandas**: For analyzing data and visualization Integration.
  - **Matplotlib**: For creating basic charts and graphs.
  - **Seaborn**: For more advanced and visually appealing plots.
- **VS Code**: Integrated Development Environment (IDE) for scripting and data handling.
- **Jupyter Notebooks**: An interactive environment for combining code, text, and visuals in one document.
- **Git & GitHub**: Version control.

## Schema Design
The database is organized into one schema, containing structured tables optimized for storing and querying the study datasets. All tables include primary keys, appropriate data types, and constraints to ensure referential integrity and facilitate cross-study analysis. Data was sourced from specific tables in the articles.

## Data Analysis

## Recommendations

## **Insights**

**1. Behaviour of the Parent**
- Parents who experienced **adversity in childhood** are more likely to rely on **harsh discipline** (like corporal punishment).
- This effect persists even when controlling for mental health symptoms → meaning it’s not just about depression or stress, but possibly about learned models of parenting.
- Female parents (possibly due to being more present in daily caregiving) reported using corporal punishment more.

**2. Future of the Child**
- Exposure to corporal punishment is strongly linked (from broader literature) to:
  - Higher **aggression** and **externalizing behaviours** (acting out, defiance).
  - Lower **emotional regulation** and **trust**.
  - Increased risk of **cycle of violence** → children who are punished harshly are more likely to use aggression in adulthood.
- Therefore, children of parents with high ACEs face a **double risk**:
  - Direct exposure to corporal punishment.
  - Potential intergenerational transmission of trauma (they may themselves parent harshly later).

**Conclusion**
**Parental ACEs are a strong predictor of corporal punishment, independent of mental health factors.**
This suggests that **ACEs shape parenting styles directly**, likely through learned behaviour models.
**For the child**, increased corporal punishment raises **risks of negative socio-emotional outcomes and perpetuates the intergenerational cycle of trauma**.

## Conclusion

###  References

[^1]: [Maternal adverse childhood experiences and behavioral problems in preschool offspring: the mediation role of parenting styles"; Table 2.](https://capmh.biomedcentral.com/articles/10.1186/s13034-023-00646-3). ```Luo, S., Chen, D., Li, C. et al. Maternal adverse childhood experiences and behavioral problems in preschool offspring: the mediation role of parenting styles. Child Adolesc Psychiatry Ment Health 17, 95 (2023). https://doi.org/10.1186/s13034-023-00646-3.```

[^2]: [The relationship between parental adverse childhood experiences and parenting behaviors"; Table 3 & 4.](https://www.sciencedirect.com/science/article/pii/S000169182400043X)```Kewalin Wattanatchariya, Assawin Narkpongphun, Suttipong Kawilapat,
The relationship between parental adverse childhood experiences and parenting behaviors,
Acta Psychologica,
Volume 243,
2024,
104166,
ISSN 0001-6918```
