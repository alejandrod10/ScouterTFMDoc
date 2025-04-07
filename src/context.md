# Context

## Introduction

As it is with almost all industries, software development plays a crucial role in ensuring efficiency, regulatory compliance, and financial accuracy. Novartis, as a leading global pharmaceutical company, relies on digital solutions to support their decision-making and to optimize their internal processes. Within the Digital Finance Hub, a specialized unit dedicated to leveraging technology for financial operations, software reliability and quality are extremely important to ensure that work is carried out smoothly and efficiently.

The Digital Finance Hub manages over 50 repositories, encompassing various applications and services for financial analysis and reporting. Given the number and complexity of these repositories, maintaining software integrity through constant validation, release management, and visualization is critical. However, manually reviewing that amount of repositories is nearly impossible and carries with it significant issues like inefficiency, human error, and release cycle delays.

To address the aforementioned, this project introduces Scouter and Jared, two tools designed to automate and enhance software release processes and code quality validation. Scouter focuses on automating code quality verification, release candidate preparation, version updates, and branch merging while ensuring compliance with internal and external quality checks. It also integrates with services like Jenkins, Bitbucket, and SonarQube. On the other hand, Jared is a visualization tool that delivers an interactive dashboard, allowing teams to monitor repository status and quickly identify issues through an easy-to-understand color-coded system.

These tools aim to boost efficiency, improve software reliability, and reduce the workload associated with the verification of the status of each repository. Their implementation within the Digital Finance Hub of Novartis is expected to enhance automation, minimize risks, and support the teams in maintaining high-quality standards across multiple projects.

## Problem to be solved

The Digital Finance Hub at Novartis oversees more than 50 repositories that contain software for financial operations, reporting, and decision-making. Guaranteeing the quality, stability, and compliance of these repositories is essential, as any errors or inconsistencies in the codebase can lead to disruptions, financial inaccuracies, and inefficiencies. However, manually reviewing code quality, release readiness, and repository health for such a big number of repositories is highly time-consuming and very inefficient, if not nearly impossible.

Currently, verifying if a project is ready for release involves multiple steps, including linting, static code analysis, test execution, and CI/CD pipeline verification, among other steps. Additionally, external tools such as Jenkins, Bitbucket, and SonarQube must be checked separately to confirm that configurations are correct, pipelines are running successfully, and that quality reports meet some predefined standards. This process, which is divided into multiple tasks, requires a lot of manual effort from the developers, increases the risk of error, and slows down release cycles.

Furthermore, there is no centralized dashboard to visualize the status of all repositories at once. Developers must manually check the different metrics and configurations of each project separately, which makes it difficult to quickly identify and address critical issues. Without a clear overview, teams can struggle to prioritize problems, which in turn can lead to potential delays or issues that get overlooked.

Another challenge arises in the release management process. Preparing a release candidate involves multiple manual steps, including updating version numbers, modifying release notes, and merging branches. These tasks are prone to inconsistencies if performed manually. The lack of automation adds unnecessary overhead to the development process, hence reducing productivity and increasing the possibility of deployment errors.

## Concepts

This section defines key terms and concepts relevant to the project. This will ensure that there is a clear understanding of its scope.

### Release management

Release management refers to the process of planning, scheduling, and controlling software builds and deployments. It includes versioning, quality assurance checks, and the automation of tasks for a smooth and reliable release. A well-structured release management process minimizes deployment risks and ensures that software is stable [@releasemanagement]. 

### Release candidate

A release candidate is a preliminary version of a software release that is close to the final version but requires final validation before it is deployed. It undergoes thorough testing to make sure that it is stable before it is officially released [@releasecandidate].

### Continuous Integration/Continuous deployment (CI/CD)

CI/CD is a set of development practices that enable frequent, automated integration and deployment of code changes. These practices help maintain software quality and reduce integration issues and deployment failures.

* Continuous Integration (CI) is a software development practice where developers regularly merge their code changes into a shared repository, and each integration is automatically verified by an automated build and test process [@cicd]. 

* Continuous Deployment (CD) builds upon CI by automating the release process to a staging environment, where every change that passes automated tests is deployed for further testing [@cicd]. 

### Static code analysis

Static code analysis is a technique used to analyze source code for potential errors, stylistic issues, and best practice violations before execution to improve code consistency and overall quality. Static analysis evaluates aspects of the code, such as complexity, maintainability, and security vulnerabilities [@staticanalysis].

### Sanity check

A sanity check is a basic validation step that ensures a system is functioning correctly before proceeding with more in-depth testing [@sanitycheck]. In the context of this project, sanity checks verify essential code quality metrics, dependency health, CI/CD pipeline configurations, and external integrations.

### Bitbucket

Bitbucket is a Git-based repository hosting service that facilitates version control, collaboration, and integration with CI/CD tools. It is widely used for managing code repositories, pull requests, and branches [@bitbucket].

### Jenkins

Jenkins is an open-source automation server used for building, testing, and deploying software. It enables CI/CD pipeline management to help with the automation of repetitive tasks and to ensure that software is tested and validated before deployment [@jenkins]. 

### SonarQube

SonarQube is a code quality and security analysis tool that performs static analysis on source code to detect issues related to bugs, vulnerabilities, code smells, and maintainability. It provides reports and dashboards to help improve software quality [@sonarqube].

### Dashboard

A dashboard provides a graphical representation of key project metrics and status indicators [@dashboard]. In this project, the dashboard uses color-coded indicators (green, yellow, red) to highlight repository issues to quickly assess the health of projects.

## Stakeholders

The development of this project impacts various stakeholders within the Digital Finance Hub at Novartis:

* **Software developers**: The primary users of Scouter and Jared. They are responsible for writing, maintaining, and improving code across multiple repositories. By integrating automated sanity checks and release management, Scouter reduces the time developers spend manually verifying code quality and compliance. Jared allows them to quickly identify and address issues, to have a smoother development workflow. Thanks to these tools, developers can focus more on feature development rather than administrative tasks.

* **Data scientists**: They rely on well-maintained and stable repositories for developing machine learning models and financial analysis tools. As they work closely with developers, they need efficient code management and deployment processes. Scouter ensures that all projects adhere to best practices in code quality and dependency validation, preventing unexpected issues in their models. Jared can help them monitor repository health, reducing time spent troubleshooting some errors.

* **Project managers and team leads**: Responsible for overseeing software development progress and ensuring that releases are delivered on time with high quality. They require a clear, real-time view of repository status to make informed decisions and allocate resources. Jared will make it easy to detect critical issues that need immediate attention. Scouter's automation features simplify version tracking and release coordination.

* **Digital Finance Hub leadership**: Responsible for driving digital transformation initiatives within Novartis. By implementing Scouter and Jared, the organization can achieve greater productivity and reliability in its software projects. These tools align with business goals and regulatory requirements and help the company maintain high-quality software and optimize development.