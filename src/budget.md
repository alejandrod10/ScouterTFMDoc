# Budget
In this chapter, an analysis of the different costs associated with the project is carried out. In addition, the budget control management strategy to be implemented throughout the life cycle of the peoject is described.

## Identification of costs
In this section, personnel costs, related to the project team, are broken down. Generic costs, which cover hardware, software, and indirect costs used in the project are also discussed. In addition, the contingency provision, which is set aside to address unexpected costs in the budget, is described. Finally, risk costs, which are intended for known possible risks that could arise during the project's development, are examined.

### Personnel cost
To break down personnel costs, the different roles associated with the project must first be identified. These are as follows:

* **Project Manager** (PM): Lead person who will oversee the project and coordinate all tasks. Gross hourly salary: 32.62€ [@proyectdirector].

* **Developer** (D): Person in charge of developing the tools. Gross hourly salary: 15.38€ [@developer].

* **Tester** (T): Person in charge of testing the proper functioning of the tools. Gross hourly salary: 14.10€ [@tester].

From this data, we can calculate the cost associated with each project task by multiplying the number of hours each tasks lasts by the hourly salary of the person in charge of carrying it out, as shown in Table @tbl:personnelcosts (the cost of social security paid by the company has already been added).

: Summary of personnel costs. Self-made. {#tbl:personnelcosts}

| ID   | Tasks                                | Estimated time (hours)  | Role | Cost (€)  |
|:----:|--------------------------------------|:-----------------------:|:----:|:----------|
| 1.1  | Project scope                        | 25                      | PM   | 1018.75   |
| 1.2  | Project planning                     | 25                      | PM   | 1018.75   |
| 1.3  | Resources and budget                 | 15                      | PM   | 611.63    |
| 1.4  | Sustainability                       | 15                      | PM   | 611.63    |
| 2.1  | Internal checks implementation       | 65                      | D    | 1249.63   |
| 2.2  | External checks integration          | 60                      | D    | 1153.50   |
| 2.3  | Output definition                    | 35                      | D    | 672.88    |
| 2.4  | Execution orchestration              | 30                      | D    | 576.75    |
| 3.1  | Release note formatting              | 40                      | D    | 769.00    |
| 3.2  | Version synchronization module       | 25                      | D    | 480.63    |
| 3.3  | Automatic branch merge process       | 40                      | D    | 769.00    |
| 3.4  | Release workflow integration         | 35                      | D    | 672.88    |
| 4.1  | Dashboard design and prototyping     | 30                      | D    | 576.75    |
| 4.2  | Real-time status integration         | 45                      | D    | 865.13    |
| 4.3  | Color-based issue classification     | 35                      | D    | 672.88    |
| 4.4  | Interactive features                 | 30                      | D    | 576.75    |
| 5.1  | Unit and integration testing         | 50                      | T    | 881.25    |
| 5.2  | Deployment setup                     | 20                      | D    | 384.50    |
| 5.3  | Final adjustments and debugging      | 20                      | D    | 384.50    |
| 6.1  | Writing project's document           | 60                      | PM   | 2446.5    |
| 6.2  | Document review                      | 10                      | PM   | 407.75    |
| 6.3  | Defense presentation                 | 10                      | PM   | 407.75    |
|**-** | **Personnel cost total:**            | **-**                   | **-**| **17208.79** |


### Generic costs
#### Amortization
Since all the software used is free to use, only hardware will be taken into account when calculating the amortization and costs. The hardware used in this project is an HP laptop, mouse, keyboard and monitor. The formula used and the table with the amortization breakdown can be found below:

\begin{equation}
\text{Amortization} = \text{Price} \times \frac{1}{4 \text{ useful years}} \times \frac{1}{125 \text{ days}} \times \frac{1}{8 \text{ hours}} \times 720 \text{ hours}
\label{eq:amortization}
\end{equation}

: Summary of amortization costs. Self-made. {#tbl:amortizationcosts}

| Hardware             | Price (€) | Amortization (€) |
|:---------------------|:----------|:-----------------|
| HP ZBook Fury G8     | 5000      | 900.00           |
| Mouse                | 20        | 3.60             |
| Keyboard             | 50        | 9.00             |
| Monitor              | 200       | 36.00            |
| **Amortization total:** | **-**     | 948.60            |


#### Indirect costs
The indirect costs associated with the project are as follows:

* **Electricity**: The price of electricity is 13€/kWh [@electricityprice]. The average consumption of a computer is 0.4kWh, so the electricity price is 13€/kWh * 0.5kWh * 720 h = 46.80€.

* **Internet**: The cost of Internet is about 50€ per month. Since we will work on the project for approximately 5 months, 8 hours a day, the total cost for internet will be 50€ * (5 months) * (20 days / 30 days) * (8 hours / 24 hours) = 55.56€.

* **Transportation**: To cover transportation, the T-Jove card is used, which gives unlimited rides on public transportation for 3 months and costs 40€. Since the project lasts 5 months, 2 cards will be needed, so the cost for transportation is €80.

#### Generic costs summary
Table @tbl:genericcosts shows a summary of all the generic costs and the total generic cost of the project.

: Summary of the generic costs associted with the project. Self-made. {#tbl:genericcosts}

| Description       | Cost (€) |
|:------------------|:---------|
| Amortization      | 948.60   |
| Electricity       | 46.80    |
| Internet          | 55.56    |
| Transportation    | 80.00    |
| **Total generic costs:** | **1130.96** |


### Contingency
Contingency refers to a financial reserve to address potential risks and unforeseen events. The contingency acts as a financial cushion that allows the team to respond effectively to situations that could have an impact on the project's costs or duration.

A contingency reserve of 15% of the total job budget has been established. This margin provides financial flexibility to address risks that cannot be fully anticipated in the early stages of the project. The contingency will be used only to address obstacles affecting project implementation that cannot be covered by other available funds. Table @tbl:contingencycosts details the contingency associated with the project.

: Summary of contingency costs. Self-made. {#tbl:contingencycosts}

| Description       | Costs (€)  | Contingency (€) |
|:------------------|:-----------|:----------------|
| Personnel costs   | 17208.79   | 2581.32         |
| Generic costs     | 1130.96    | 169.64          |
| **Contingency total:** | **-** | **2750.96**       |


### Risk costs
The risk of the obstacles, mentioned in section \ref{sec:riskmanagement}, that may arise during the development of the project is quantified below alongside the number of overtime hours that will be needed, which person (role) will be in charge and, their associated cost.

: Summary of risk costs. Self-made. {#tbl:riskcosts}

| Risk                                | Probability (%) | Extra hours | Role | Cost (€)  |
|:------------------------------------|:---------------:|:-----------:|:----:|:----------|
| Integration challenges              | 25              | 20          | D    | 384.50    |
| Performance and scalability issues  | 20              | 15          | D    | 288.38    |
| False positives/negatives in checks | 15              | 10          | T    | 176.25    |
| Complexity in automating release    | 25              | 15          | D    | 288.38    |
| Delays in testing and debugging     | 25              | 30          | T    | 528.75    |
| **Risk costs total:**               | **-**           | **-**       | **-**| **1666.26** |


### Total cost
Table @tbl:totalcost  specifies the total estimated cost of the project, calculated from the sum of personnel costs, generic costs, contingency and risk costs.

: Total estimated cost of the project. Self-made. {#tbl:totalcost}

| Description       | Costs (€)  |
|:------------------|:-----------|
| Personnel costs   | 17208.79   |
| Generic costs     | 1130.96    |
| Contingency       | 2750.96    |
| Risk costs        | 1666.26    |
| **Total project cost:** | **22756.97** |


## Management control
To ensure that the project remains within the established budget, some control mechanisms have been implemented. These allow early identification of deviations in the project's cost. In addition, numerical indicators have been defined to serve as benchmark measures to evaluate them. These indicators include:

* **Actual cost (AC)**: Represents the actual cost that has been used until now on the project.

* **Planned budget (PB)**: The amount of financial resources that were initially allocated to the project.

* **Estimated cost at completion (ECC)**: An estimate of the total cost of the project at completion, based on the actual cost to date and forecasts for the remainder of the project.

The mechanisms for controlling deviations in the budget are as follows:

* **Periodic monitoring**: The numerical indicators mentioned above will be monitored periodically. This allows for constant control of spending and early identification of deviations.

* **Variance analysis**: Any significant differences between actual and planned costs will be analyzed in detail. The causes of these variances will be determined and corrective actions will be taken as needed.

* **Approval of additional costs**: Requests for additional spending will only be approved after thorough evaluation and justification.