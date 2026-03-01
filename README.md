# Project History Application (Rails)

A Rails application for tracking projects and their conversation
history. Authenticated users can comment on projects, update their
status, and view a combined timeline of all project activity.

------------------------------------------------------------------------

## Table of Contents

-   [Assumptions & Questions](#assumptions--questions)
-   [Key Features](#key-features)
-   [Status Workflow](#status-workflow)
-   [Models Overview](#models-overview)
-   [Setup Instructions](#setup-instructions)

------------------------------------------------------------------------

## Assumptions & Questions

### 1. Who should be able to comment or change project status?

**Expected Answer:**\
Only authenticated users should be allowed to interact with projects.

**Implementation Decision:**\
Devise authentication was implemented. All project interactions require
login.

------------------------------------------------------------------------

### 2. What statuses should a project support?

**Expected Answer:**\
Projects should have simple lifecycle states:\
- Pending\
- In Progress\
- Completed

**Implementation Decision:**\
A fixed list of statuses was implemented and status updates are recorded
in the conversation timeline.

------------------------------------------------------------------------

### 3. Should status changes record both the previous and new status?

**Expected Answer:**\
Yes, the system should maintain a clear history of status transitions.

**Implementation Decision:**\
Each status update creates a timeline entry indicating the change.

------------------------------------------------------------------------

### 4. Should comments and status changes appear in one combined history?

**Expected Answer:**\
Yes, the conversation history should display all activity
chronologically.

**Implementation Decision:**\
A unified timeline per project displays both comments and status updates
ordered by creation time.

------------------------------------------------------------------------

### 5. Can comments or status updates be edited or deleted?

**Expected Answer:**\
No. Only creation is required for this version.

**Implementation Decision:**\
Timeline entries are immutable once created.

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
    project views.

------------------------------------------------------------------------

## Status Workflow

Projects can be in one of the following states:

-   **Pending** -- Project has been created but work has not started.\
-   **In Progress** -- Project is actively being worked on.\
-   **Completed** -- Project work has been finished.

Each status update is logged in the project timeline.

------------------------------------------------------------------------

## Models Overview

-   **User** -- Stores registered users with `name` and `email`.\
-   **Project** -- Represents a project with a `name` and `status`.\
-   **ProjectConversation** -- Records both comments and status updates
    for each project.

This structure enables a single chronological timeline per project.

------------------------------------------------------------------------

## Setup Instructions

### Requirements

-   **Ruby:** 4.0.1\
-   **Rails:** 8.1.2\
-   **Database:** SQLite3 (development), PostgreSQL recommended for
    production

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
