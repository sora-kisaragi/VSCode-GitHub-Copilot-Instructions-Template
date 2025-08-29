---
mode: ask
tools: [github]
description: Comprehensive task and project management using GitHub Issues, milestones, and structured planning approaches.
---

# Task Management Prompt

Provide comprehensive task management assistance for software development projects, including planning, tracking, and organization.

## Task Assessment and Planning

### 1. Repository and Issue Analysis
- **Repository Access**: Check if GitHub repository and Issues are accessible
- **Existing Issues**: Search for related existing issues and their current status
- **Issue Creation**: Create new issues when needed with proper templates and labels
- **Milestone Alignment**: Organize tasks according to project milestones and releases

### 2. Task Breakdown and Organization
- **Epic Decomposition**: Break down large features into manageable tasks
- **Dependency Mapping**: Identify task dependencies and prerequisite work
- **Priority Assessment**: Evaluate task importance and urgency
- **Effort Estimation**: Provide rough estimates for task complexity
- **Sprint Planning**: Organize tasks for iterative development cycles

## Task Structure and Documentation

### GitHub Issues (When Accessible)
- **Title**: Clear, descriptive issue titles following conventions
- **Description**: Detailed task description with acceptance criteria
- **Labels**: Appropriate labels (bug, feature, documentation, etc.)
- **Assignees**: Team member assignments when applicable
- **Milestones**: Link to relevant project milestones
- **Templates**: Use issue templates when available

### Markdown Fallback (When GitHub Issues Unavailable)
- **Structured Lists**: Organized task hierarchies with clear grouping
- **Status Tracking**: Use checkboxes for completion status
- **Metadata**: Include priority, complexity, and dependency information
- **Progress Updates**: Regular status updates and notes

## Task Categorization

### Development Tasks
- **Feature Development**: New functionality implementation
- **Bug Fixes**: Issue resolution and debugging
- **Technical Debt**: Code refactoring and improvement
- **Testing**: Unit, integration, and end-to-end test creation
- **Performance**: Optimization and performance improvement

### Project Management Tasks
- **Documentation**: README, API docs, user guides
- **DevOps**: CI/CD, deployment, infrastructure
- **Research**: Technology evaluation and proof of concepts
- **Planning**: Architecture design, requirement analysis
- **Maintenance**: Dependency updates, security patches

## Output Format

### For GitHub Issues
```markdown
## Issue Summary
- **Status**: [Open/In Progress/Closed]
- **Priority**: [High/Medium/Low]
- **Complexity**: [Small/Medium/Large]
- **Sprint**: [Current Sprint Name]

## Task Breakdown
1. [ ] Subtask 1 - Brief description
2. [ ] Subtask 2 - Brief description
3. [ ] Subtask 3 - Brief description

## Acceptance Criteria
- [ ] Criterion 1
- [ ] Criterion 2
- [ ] Criterion 3

## Dependencies
- Depends on: Issue #123
- Blocks: Issue #456
```

### For Markdown Checklists
```markdown
# Project Tasks

## High Priority
- [ ] **Feature A Implementation** (Large) - Due: Next Sprint
  - [ ] Design API endpoints
  - [ ] Implement backend logic
  - [ ] Create frontend components
  - [ ] Add comprehensive tests

## Medium Priority
- [ ] **Bug Fix B** (Small) - Dependencies: Feature A
- [ ] **Documentation Update** (Medium)

## Low Priority / Future
- [ ] **Performance Optimization** (Large)
- [ ] **UI/UX Improvements** (Medium)
```

## Task Management Best Practices

### Planning Guidelines
- **SMART Goals**: Specific, Measurable, Achievable, Relevant, Time-bound
- **Definition of Done**: Clear completion criteria for each task
- **Regular Reviews**: Weekly/sprint reviews to assess progress
- **Dependency Management**: Track and communicate blocked tasks
- **Risk Assessment**: Identify potential blockers and mitigation strategies

### Communication
- **Progress Updates**: Regular status updates on task progress
- **Blocking Issues**: Immediate communication when tasks are blocked
- **Scope Changes**: Document and communicate any scope modifications
- **Team Coordination**: Ensure proper handoffs and collaboration

### Tracking and Metrics
- **Velocity Tracking**: Monitor team completion rates
- **Burndown Charts**: Track progress against sprint goals
- **Cycle Time**: Measure time from start to completion
- **Quality Metrics**: Track bugs, rework, and technical debt

## Workflow Integration

1. **Assessment**: Analyze current project state and requirements
2. **Planning**: Create structured task breakdown with dependencies
3. **Prioritization**: Order tasks by value and feasibility
4. **Assignment**: Distribute tasks based on skills and capacity
5. **Tracking**: Monitor progress and adjust plans as needed
6. **Review**: Regular retrospectives and process improvements

Use this prompt to maintain organized, trackable, and efficient project management across your development workflow.
