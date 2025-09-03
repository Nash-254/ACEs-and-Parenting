# ACEs and Parenting

## Project Overview
This project aims to examine the impact of **Adverse Childhood Experiences (ACEs)** on the **mental well-being of parents**, and how these effects subsequently shape their **parenting practices** and contribute to the **behavioral outcomes observed in their children**.

## Data Source
The data used in this project is drawn from **peer-reviewed journals** mainly from [BioMedCentral.com](https://capmh.biomedcentral.com/) and [ScienceDirect.com](https://www.sciencedirect.com/) which are open access to the public. 

The data in the studies was obtained from mothers in Chengdu, China and parents of students in Chiang Mai, Thailand.

See references section for citation details.

## Project Objectives
The project aims:
1. To examine the **association between maternal ACEs** and **behavioral problems** in their **preschool offspring**. Study was conducted involving 4,243 mother-child dyads in Chengdu, China. [^1]
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

## Data Analysis
### 1. Association between maternal ACEs and behavioral problems in their preschool offspring.
**Insights**
- Children of mothers with **one or more ACE** exposure had **significantly higher risk** of conduct problems, psychosomatic problems, anxiety, and hyperactivity index, compared to those without maternal ACE exposure.
- There's a **strong association** between **maternal ACEs** and different types of **behavioral problems**, strongest being in **conduct problems** in the child of mothers with an ACE count of equal to or more than 4.
  
![Maternal ACEs and children behaviour outcomes](/visuals/1.Maternal_ACEs_and_Children_Behaviour.png)
**Figure 1.** Maternal ACEs and children behaviour outcomes. 

### 2. Relationship between parental ACEs and parenting, the effect on mental health which possibly mediated parenting behaviors.

**Insights**

- **Parental ACEs are a strong predictor of corporal punishment, independent of mental health factors**. This suggests that ACEs shape parenting styles directly, likely through learned behaviour models.
- For the **child**, increased **corporal punishment** raises risks of **negative socio-emotional outcomes** and perpetuates the **intergenerational cycle of trauma**.

![ACEs and direct parental mental health and parenting behaviour](/visuals/2.ACEs_and_direct_mental_health_parenting_behaviour.png)
**Figure 2.** ACEs and direct parental mental health and parenting behaviour.

## Recommendations

## Conclusion
**Maternal ACEs increase the risk of diverse child behavioral problems** in a clear dose–response pattern, with rejecting parenting styles partly mediating this link, though strong direct effects remain. Parental ACEs are also a **strong predictor of corporal punishment, independent of maternal mental health**, suggesting that **childhood adversity directly shapes parenting** through learned behavior models. For **children**, exposure to **harsher parenting practices increases the risk of negative socio-emotional outcomes** and perpetuates the intergenerational cycle of trauma.

However, these findings also highlight a critical **opportunity**: with **trauma-informed care**, targeted parenting support, and strategies that strengthen maternal well-being, it is possible to **break this cycle**. By equipping parents with healthier models of care and support, we can foster resilience and build a more **hopeful future for the next generation**.



###  References

[^1]: [Maternal adverse childhood experiences and behavioral problems in preschool offspring: the mediation role of parenting styles"; Table 2.](https://capmh.biomedcentral.com/articles/10.1186/s13034-023-00646-3). ```Luo, S., Chen, D., Li, C. et al. Maternal adverse childhood experiences and behavioral problems in preschool offspring: the mediation role of parenting styles. Child Adolesc Psychiatry Ment Health 17, 95 (2023). https://doi.org/10.1186/s13034-023-00646-3.```

[^2]: [The relationship between parental adverse childhood experiences and parenting behaviors"; Table 3 & 4.](https://www.sciencedirect.com/science/article/pii/S000169182400043X)```Kewalin Wattanatchariya, Assawin Narkpongphun, Suttipong Kawilapat,
The relationship between parental adverse childhood experiences and parenting behaviors,
Acta Psychologica,
Volume 243,
2024,
104166,
ISSN 0001-6918```
