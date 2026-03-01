# Project History Application (Rails)

A Rails application for tracking projects and their conversation
history. Authenticated users can comment on projects, update their
status, and view a combined timeline of all project activity.

------------------------------------------------------------------------

## Table of Contents

-   [Key Features](#key-features)\
-   [Status Workflow](#status-workflow)\
-   [Models Overview](#models-overview)\
-   [Setup Instructions](#setup-instructions)

------------------------------------------------------------------------

## Key Features

-   **User Authentication** -- Sign up, login, and logout using Devise.\
-   **Project Management** -- Users can view all projects and project
    details.\
-   **Commenting** -- Authenticated users can leave comments on
    projects.\
-   **Status Tracking** -- Projects have statuses: Pending, In Progress,
    Completed. Status updates are recorded in the timeline.\
-   **Activity Timeline** -- Comments and status changes are displayed
    chronologically with user info and timestamps.\
-   **Responsive Design** -- Modern login and signup pages and clean
    project views for any device.

------------------------------------------------------------------------

## Status Workflow

Projects can be in one of the following states:

-   **Pending** -- Project has been created, but work hasn't started.\
-   **In Progress** -- Project is actively being worked on.\
-   **Completed** -- Project work is finished.

All status updates are logged in the timeline to maintain a complete
history of project activity.

------------------------------------------------------------------------

## Models Overview

-   **User** -- Stores registered users with `name` and `email`.\
-   **Project** -- Represents a project with a `name` and `status`.\
-   **ProjectConversation** -- Records comments and status updates for
    each project.

This structure allows a unified timeline per project that displays all
activity in order.

------------------------------------------------------------------------

## Setup Instructions

### Requirements

-   **Ruby:** 4.0.1\
-   **Rails:** 8.1.2\
-   **Database:** SQLite3 for development (PostgreSQL recommended for
    production)

### Installation Steps

1.  Clone the repository:

``` bash
git clone <your-repo-url>
cd history_app
```

2.  Install dependencies:

``` bash
bundle install
```

3.  Set up the database:

``` bash
rails db:create
rails db:migrate
```

4.  Start the development server:

``` bash
rails server
```
