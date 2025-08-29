---
mode: ask
tools: [str_replace_editor]
description: Database design, schema modeling, and optimization guidance for relational and NoSQL databases.
---

# Database Design and Modeling Prompt

Provide comprehensive database design assistance, including schema design, optimization, and best practices for various database systems.

## Database Design Process

### 1. Requirements Analysis
- **Data Requirements**: Identify entities, attributes, and relationships
- **Functional Requirements**: Understand application use cases and workflows
- **Performance Requirements**: Query patterns, expected load, and response times
- **Scalability Needs**: Growth projections and scaling considerations
- **Compliance Requirements**: Data privacy, retention, and regulatory needs

### 2. Conceptual Design
- **Entity-Relationship Modeling**: Create ER diagrams with entities and relationships
- **Data Flow Analysis**: Understand how data moves through the system
- **Business Rules**: Document constraints and validation requirements
- **Data Lifecycle**: Plan for data creation, updates, archival, and deletion

### 3. Logical Design
- **Normalization**: Apply normal forms to reduce redundancy
- **Denormalization**: Strategic denormalization for performance when needed
- **Referential Integrity**: Define foreign key relationships and constraints
- **Indexing Strategy**: Plan indexes for query optimization
- **Partitioning**: Consider table partitioning for large datasets

## Database Type Considerations

### Relational Databases (SQL)
- **PostgreSQL**: Advanced features, JSON support, full-text search
- **MySQL**: Performance, replication, wide ecosystem support
- **SQL Server**: Enterprise features, integration with Microsoft stack
- **SQLite**: Embedded applications, development, and testing

**Best Practices:**
- Use appropriate data types for storage efficiency
- Implement proper constraints (PRIMARY KEY, FOREIGN KEY, CHECK)
- Design for ACID compliance when needed
- Plan backup and recovery strategies

### NoSQL Databases

#### Document Databases (MongoDB, CouchDB)
- **Use Cases**: Flexible schema, rapid development, content management
- **Design Principles**: Embed related data, avoid joins, design for queries
- **Considerations**: Document size limits, indexing strategies

#### Key-Value Stores (Redis, DynamoDB)
- **Use Cases**: Caching, session storage, real-time applications
- **Design Principles**: Simple key design, consider TTL, plan for distribution
- **Considerations**: Memory usage, persistence options

#### Column-Family (Cassandra, HBase)
- **Use Cases**: Time-series data, logging, large-scale analytics
- **Design Principles**: Design for query patterns, consider partitioning
- **Considerations**: Eventual consistency, tombstone management

#### Graph Databases (Neo4j, Amazon Neptune)
- **Use Cases**: Social networks, recommendation engines, fraud detection
- **Design Principles**: Model relationships explicitly, optimize traversals
- **Considerations**: Query complexity, relationship cardinality

## Schema Design Guidelines

### Table Design
```sql
-- Example: Well-designed user table
CREATE TABLE users (
    id BIGSERIAL PRIMARY KEY,
    email VARCHAR(254) UNIQUE NOT NULL,
    username VARCHAR(50) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    is_active BOOLEAN DEFAULT true,
    
    CONSTRAINT users_email_format CHECK (email ~* '^[^@]+@[^@]+\.[^@]+$'),
    CONSTRAINT users_username_length CHECK (char_length(username) >= 3)
);

-- Indexes for common queries
CREATE INDEX idx_users_email ON users(email);
CREATE INDEX idx_users_username ON users(username);
CREATE INDEX idx_users_created_at ON users(created_at);
```

### Relationship Management
- **One-to-One**: Use foreign keys or merge tables when appropriate
- **One-to-Many**: Foreign key in the "many" table
- **Many-to-Many**: Junction/bridge tables with composite keys
- **Self-Referencing**: Handle hierarchical data carefully

### Data Types and Constraints
- **Numeric**: Choose appropriate precision (INT, BIGINT, DECIMAL)
- **Text**: Use VARCHAR with appropriate limits, TEXT for long content
- **Dates**: Always use timezone-aware timestamps
- **JSON/JSONB**: For semi-structured data in PostgreSQL
- **UUIDs**: For distributed systems and privacy considerations

## Performance Optimization

### Indexing Strategies
- **Primary Keys**: Ensure efficient primary key design
- **Foreign Keys**: Index foreign key columns
- **Composite Indexes**: Order columns by selectivity
- **Partial Indexes**: For filtered queries
- **Covering Indexes**: Include frequently accessed columns

### Query Optimization
- **Query Plans**: Analyze execution plans regularly
- **Joins**: Optimize join order and types
- **Subqueries**: Convert to JOINs when beneficial
- **Aggregations**: Use appropriate GROUP BY and HAVING clauses
- **Pagination**: Implement efficient pagination strategies

### Scaling Strategies
- **Vertical Scaling**: Increase server resources
- **Read Replicas**: Distribute read load
- **Sharding**: Partition data across multiple databases
- **Caching**: Implement application-level caching
- **Connection Pooling**: Manage database connections efficiently

## Security and Data Protection

### Access Control
- **Authentication**: Secure database user management
- **Authorization**: Role-based access control (RBAC)
- **Principle of Least Privilege**: Grant minimum necessary permissions
- **Network Security**: Secure connections (SSL/TLS)

### Data Protection
- **Encryption**: Encrypt sensitive data at rest and in transit
- **PII Handling**: Proper handling of personally identifiable information
- **Data Masking**: Anonymize data for development/testing
- **Audit Trails**: Track data access and modifications

## Migration and Maintenance

### Schema Migrations
- **Version Control**: Track schema changes in version control
- **Forward/Backward Compatibility**: Design reversible migrations
- **Testing**: Test migrations on production-like data
- **Rollback Plans**: Prepare rollback procedures

### Monitoring and Maintenance
- **Performance Monitoring**: Track query performance and resource usage
- **Capacity Planning**: Monitor storage and connection usage
- **Backup Strategies**: Regular backups with tested recovery procedures
- **Index Maintenance**: Monitor and maintain index effectiveness

## Output Format

When providing database design recommendations, include:

1. **ER Diagram**: Text-based or Mermaid diagram of entities and relationships
2. **DDL Scripts**: CREATE TABLE statements with constraints and indexes
3. **Sample Data**: Example INSERT statements for testing
4. **Query Examples**: Common queries with explanations
5. **Performance Notes**: Indexing and optimization recommendations
6. **Security Considerations**: Data protection and access control suggestions
7. **Migration Strategy**: Steps for implementing the design

Use this prompt for comprehensive database design guidance across different database systems and use cases.