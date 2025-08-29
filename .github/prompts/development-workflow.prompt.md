---
mode: ask
tools: [github, str_replace_editor, bash]
description: Comprehensive development workflow guidance covering the full software development lifecycle from planning to deployment.
---

# Development Workflow Prompt

Provide comprehensive guidance for the complete software development lifecycle, integrating best practices for planning, development, testing, and deployment.

## Workflow Phases

### 1. Project Planning and Setup
- **Requirements Analysis**: Gather and document functional and non-functional requirements
- **Technology Stack Selection**: Choose appropriate languages, frameworks, and tools
- **Architecture Design**: Plan system architecture, database design, and API structure
- **Repository Setup**: Initialize git repository with proper branching strategy
- **Development Environment**: Set up consistent development environments (Docker, dev containers)
- **CI/CD Pipeline**: Configure automated testing and deployment pipelines

### 2. Development Phase

#### Code Development
- **Feature Branching**: Create feature branches from main/develop branch
- **Coding Standards**: Follow language-specific and project coding standards
- **Progressive Development**: Break features into small, manageable commits
- **Code Reviews**: Regular peer reviews before merging changes
- **Documentation**: Maintain inline documentation and update project docs

#### Version Control Best Practices
```bash
# Feature development workflow
git checkout -b feature/user-authentication
git add . && git commit -m "feat: implement user login functionality"
git push -u origin feature/user-authentication
# Create PR for review
```

#### Testing Strategy
- **Unit Tests**: Test individual functions and components
- **Integration Tests**: Test component interactions
- **End-to-End Tests**: Test complete user workflows
- **Performance Tests**: Validate performance requirements
- **Security Tests**: Check for common vulnerabilities

### 3. Quality Assurance

#### Code Quality Gates
- **Linting**: Automated code style and quality checks
- **Static Analysis**: Security and bug detection tools
- **Test Coverage**: Maintain adequate test coverage (>80%)
- **Dependency Scanning**: Check for vulnerable dependencies
- **Code Complexity**: Monitor cyclomatic complexity metrics

#### Review Process
- **Automated Checks**: All CI checks must pass before review
- **Peer Review**: At least one team member review required
- **Domain Expert Review**: Subject matter expert approval for complex changes
- **Documentation Review**: Ensure documentation is updated
- **Security Review**: Security-focused review for sensitive changes

### 4. Deployment and Release

#### Release Preparation
- **Version Tagging**: Semantic versioning for releases
- **Release Notes**: Document changes, features, and breaking changes
- **Migration Scripts**: Database or configuration migrations
- **Rollback Plan**: Prepared rollback procedures
- **Monitoring Setup**: Alerts and monitoring for new features

#### Deployment Strategies
- **Blue-Green Deployment**: Zero-downtime deployments
- **Canary Releases**: Gradual rollout to subset of users
- **Rolling Updates**: Progressive update of application instances
- **Feature Flags**: Control feature rollout independently of deployment

### 5. Post-Deployment

#### Monitoring and Observability
- **Application Monitoring**: Performance, errors, and user experience
- **Infrastructure Monitoring**: Server resources and availability
- **Log Aggregation**: Centralized logging for debugging
- **User Analytics**: Feature usage and user behavior
- **Alert Management**: Proactive issue detection and notification

#### Maintenance and Support
- **Bug Triage**: Prioritize and assign bug fixes
- **Performance Optimization**: Ongoing performance improvements
- **Security Updates**: Regular dependency and security updates
- **Backup Verification**: Ensure backup and recovery procedures work
- **Documentation Updates**: Keep documentation current with changes

## Workflow Integration Tools

### Project Management
- **Issue Tracking**: GitHub Issues, Jira, or similar
- **Project Boards**: Kanban boards for task visualization
- **Sprint Planning**: Regular planning and retrospective meetings
- **Time Tracking**: Monitor development effort and estimates

### Communication
- **Team Standups**: Regular progress and blocker discussions
- **Code Review Comments**: Constructive feedback on code changes
- **Documentation**: Shared knowledge base and decision records
- **Change Notifications**: Automated notifications for deployments

### Automation
- **CI/CD Pipelines**: Automated testing and deployment
- **Dependency Updates**: Automated dependency update PRs
- **Security Scanning**: Regular security vulnerability scans
- **Performance Testing**: Automated performance regression testing

## Workflow Templates

### Feature Development Checklist
```markdown
- [ ] **Planning**
  - [ ] Requirements documented and reviewed
  - [ ] Technical design approved
  - [ ] Breaking changes identified and communicated
  
- [ ] **Development**
  - [ ] Feature branch created from latest main
  - [ ] Code follows project standards and conventions
  - [ ] Unit tests written and passing
  - [ ] Integration tests updated
  - [ ] Documentation updated
  
- [ ] **Review**
  - [ ] All automated checks passing
  - [ ] Code review completed and approved
  - [ ] Security review completed (if applicable)
  - [ ] Performance impact assessed
  
- [ ] **Deployment**
  - [ ] Staged environment testing completed
  - [ ] Production deployment plan reviewed
  - [ ] Monitoring and alerts configured
  - [ ] Rollback plan prepared
```

### Bug Fix Workflow
```markdown
- [ ] **Investigation**
  - [ ] Bug reproduced and documented
  - [ ] Root cause identified
  - [ ] Impact assessment completed
  - [ ] Priority and severity assigned
  
- [ ] **Resolution**
  - [ ] Fix implemented with minimal scope
  - [ ] Regression tests added
  - [ ] Edge cases considered and tested
  - [ ] Documentation updated if needed
  
- [ ] **Verification**
  - [ ] Fix verified in test environment
  - [ ] Original reporter confirms resolution
  - [ ] No new issues introduced
  - [ ] Performance impact acceptable
```

## Best Practices by Project Type

### Web Applications
- **Responsive Design**: Mobile-first development approach
- **Accessibility**: WCAG compliance and screen reader support
- **Performance**: Optimize bundle sizes and loading times
- **SEO**: Search engine optimization for public applications
- **Browser Support**: Define and test supported browser versions

### APIs and Services
- **API Design**: RESTful or GraphQL API design principles
- **Authentication**: Secure authentication and authorization
- **Rate Limiting**: Protect against abuse and overuse
- **Versioning**: API versioning strategy for backward compatibility
- **Documentation**: Interactive API documentation (OpenAPI/Swagger)

### Mobile Applications
- **Platform Guidelines**: Follow iOS/Android design guidelines
- **Offline Support**: Handle network connectivity issues
- **App Store Compliance**: Meet platform submission requirements
- **Performance**: Optimize for battery life and memory usage
- **Testing**: Device testing across different screen sizes and OS versions

### Data-Intensive Applications
- **Data Pipeline**: Reliable data processing and transformation
- **Data Quality**: Validation and monitoring of data integrity
- **Scalability**: Handle growing data volumes efficiently
- **Backup and Recovery**: Comprehensive data backup strategies
- **Compliance**: Data privacy and regulatory compliance (GDPR, CCPA)

Use this comprehensive workflow to ensure consistent, high-quality software development across your team and projects.