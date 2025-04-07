# Scope {#sec:scope}

## Objectives

The main objective of this project is to automate and optimize software release management, code quality verification, and repository status visualization within the Digital Finance Hub at Novartis for the team to be able to manage the large number of repositories that are used. This will be realized by developing two integrated tools: Scouter, which automates sanity checks and release management, and Jared, which provides real-time repository insights through an interactive dashboard. To achieve this, the project is divided into three general objectives, each with its corresponding sub-objectives that define specific functionalities and expected outcomes.

### Scouter: automated checks

Scouter ensures that all repositories meet code quality, security, and compliance standards throughout development and before a release. This is done through internal and external checks that validate the integrity of the software. We can divide this into the following sub-objectives:

* Implement internal sanity checks to detect issues:
    * Code formatting violations.
    * Unused code.
    * Unused imports.
    * Incorrect dependencies.
    * Mandatory and forbidden packages.
    * Incorrect SQL queries.
    * Correct Docker image
    * Cyclomatic complexity and maintainability.
    * Spelling errors.
    * Failing tests.
    * Availability of Cruft updates.
    * Statistics:
        * Number of files.
        * Number of lines of code.
        * Average length of a file.
        * Length of the largest python file.


* Implement external sanity checks by integrating with:
    * Jenkins (verify green pipelines and CI/CD success).
    * Bitbucket:
        * Default pull request reviewers.
        * Merge strategies.
        * Webhook policies.
    * SonarQube (code quality and security reports).

* Automate the execution of the checks to run periodically at key stages of development.

### Scouter: release management

Scouter automates the generation, validation, and deployment of release candidates, removing manual steps in the release process. The sub-objectives to achieve this are:

* Automate release candidate generation:
    * The release_notes file is generated automatically.
    * The pyproject.toml and sonar-project.version files are updated with the new version number.

* Automate branch merging:
    * The release branch is correctly created from develop and merged into both master and develop.
    * Merging processes follow the predefined validation rules to avoid conflicts or breaking changes.

* Integrate the release management with CI/CD tools to trigger an automated validation before deployment.

### Jared: visualization and monitoring

Jared provides an interactive dashboard that gathers health insights for all repositories, allowing users to quickly identify issues and keep track of their project's status. This objective can be divided into:

* Develop a dashboard with color-coded indicators to display the status of each repository:
    * Green: No issues detected, the repository is stable.
    * Yellow: Non-critical issues detected, but the system can still function.
    * Red: Critical issues requiring immediate attention.

* Integrate real-time data sources from:
    * Scouter's sanity check results.
    * Jenkins, Bitbucket, and SonarQube reports gathered by Scouter.

* Enable click functionalities to allow users to dive into specific repositories to view detailed issue reports.

## Requirements

Scouter and Jared must meet a series of requirements:

* **Performance**: Jared must be capable of handling 50+ repositories simultaneously without performance degradation while Scouter's checks on repositories must complete execution in a reasonable time frame.

* **Scalability**: Jared and Scouter must be scalable to support additional repositories and additional functionalities in the future respectively.

* **Security**: Authentication and authorization must be integrated with Novartis' identity management system and must ensure secure API communication with Jenkins, Bitbucket, and SonarQube.

* **Usability**: The results of Scouter's checks must be easily interpretable, with clear error messages while Jared must provide a user-friendly interface for interacting with its dashboards.

* **Maintainability**: Scouter must be modular and maintainable, allowing easy updates and enhancements. Also, comprehensive logging and monitoring must be implemented to track system performance and diagnose issues.

* **Availability**: Jared's dashboards should always be accessible to allow users to track and detect issues at all times.

## Obstacles and risks {#sec:risks}

Obstacles and risks that could arise during the development of the project are:

* **Integration challenges**:  Scouter and Jared rely on integration with Jenkins, Bitbucket, and SonarQube, each with its own API limitations and potential changes over time. If API updates or deprecations occur, system functionality could be disrupted.

* **Performance and scalability issues**: Given that Scouter must manage large projects and Jared must handle over 50 repositories, performance issues may arise if checks take too long or the dashboard get overloaded.

* **User resistance**: Developers and data scientists may be reluctant to adopt new tools if they disrupt their existing workflows or add extra complexity.

* **False positives or false negatives Scouter's checks**: Very strict check rules may flag non-critical issues (false positives), leading to unnecessary fixes, while overly lenient rules may fail to detect actual problems (false negatives).

* **Complexity in automating release process**: Automating the branching and merging strategy might introduce complications such as merge conflicts or pipeline delays.