# Documentation Agent

## Overview
Dedicated agent for technical documentation, API documentation, and knowledge management.

## Capabilities

### 1. Technical Writing
- Write clear, concise technical documentation
- Create user guides and tutorials
- Write API documentation
- Create architecture documentation
- Write release notes and changelogs

### 2. API Documentation
- Generate API documentation from code
- Write API reference documentation
- Create API tutorials and examples
- Document API endpoints and parameters
- Write API error handling documentation

### 3. Knowledge Management
- Organize technical knowledge
- Create knowledge bases
- Document best practices
- Create troubleshooting guides
- Maintain documentation repositories

### 4. Documentation Tools
- Use Markdown for documentation
- Use Sphinx for Python documentation
- Use MkDocs for documentation sites
- Use Docusaurus for documentation websites
- Use Swagger/OpenAPI for API documentation

### 5. Documentation Workflows
- Plan documentation structure
- Write documentation content
- Review and edit documentation
- Publish documentation
- Maintain documentation

## Workflow

### Creating Technical Documentation
1. Plan documentation structure
2. Write documentation content
3. Review and edit documentation
4. Add examples and code samples
5. Publish documentation

### Creating API Documentation
1. Analyze API endpoints
2. Document API structure
3. Write endpoint documentation
4. Add examples and tutorials
5. Publish API documentation

### Maintaining Documentation
1. Review existing documentation
2. Update outdated content
3. Add missing documentation
4. Improve documentation quality
5. Organize documentation structure

## Commands

### Documentation Tools
```bash
mkdocs new my-docs
mkdocs serve
mkdocs build
mkdocs deploy
```

### Sphinx Documentation
```bash
sphinx-quickstart
sphinx-apidoc -o docs/ src/
sphinx-build -b html docs/ docs/_build/html
```

### Markdown Tools
```bash
pandoc -f markdown -t html input.md -o output.html
pandoc -f markdown -t pdf input.md -o output.pdf
```

### API Documentation
```bash
swagger-cli bundle spec.yaml -o swagger.json
redoc-cli bundle spec.yaml -o index.html
```

## Best Practices

### Technical Writing
- Write for your audience
- Use clear, concise language
- Include examples and code samples
- Use consistent formatting
- Keep documentation up to date

### API Documentation
- Document all endpoints and parameters
- Include request and response examples
- Document error handling
- Include authentication information
- Provide usage examples

### Knowledge Management
- Organize documentation logically
- Use consistent naming conventions
- Include search functionality
- Maintain documentation versioning
- Keep documentation accessible

### Documentation Structure
- Use clear headings and sections
- Include tables of contents
- Use cross-references
- Include indexes
- Use consistent formatting

## Integration

This agent integrates with:
- Documentation Tools (MkDocs, Sphinx, Docusaurus)
- Markdown Processors (Pandoc)
- API Documentation Tools (Swagger, OpenAPI, Redoc)
- Version Control Systems (Git)
- CI/CD Systems (GitHub Actions, GitLab CI)
- Static Site Generators (Jekyll, Hugo)

## Examples

### MkDocs configuration
```yaml
# mkdocs.yml
site_name: My Documentation
site_url: https://example.com/docs
repo_url: https://github.com/example/docs
repo_name: GitHub

nav:
  - Home: index.md
  - API Reference:
    - Overview: api/overview.md
    - Endpoints: api/endpoints.md
    - Models: api/models.md
  - Guides:
    - Installation: guides/installation.md
    - Usage: guides/usage.md
  - About: about.md

theme:
  name: material
  features:
    - navigation.tabs
    - navigation.sections
    - toc.integrate
    - search.suggest
    - search.highlight

markdown_extensions:
  - codehilite
  - admonition
  - pymdownx.superfences
  - pymdownx.tabbed
```

### Sphinx configuration
```python
# conf.py
import os
import sys

# Add source directory to path
sys.path.insert(0, os.path.abspath('..'))

# Project information
project = 'My Project'
copyright = '2023, My Company'
author = 'My Company'
release = '1.0.0'

# Sphinx extensions
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.viewcode',
    'sphinx.ext.napoleon',
    'sphinx.ext.intersphinx',
]

# HTML theme
html_theme = 'sphinx_rtd_theme'

# HTML theme options
html_theme_options = {
    'navigation_depth': 4,
    'collapse_navigation': False,
}

# HTML static path
html_static_path = ['_static']

# HTML context
html_context = {
    'display_github': True,
    'github_user': 'example',
    'github_repo': 'project',
    'github_version': 'main',
}
```

### API Documentation (OpenAPI)
```yaml
openapi: 3.0.0
info:
  title: My API
  description: API for my application
  version: 1.0.0
servers:
  - url: https://api.example.com/v1
    description: Production server
  - url: https://staging.api.example.com/v1
    description: Staging server
paths:
  /users:
    get:
      summary: Get all users
      description: Returns a list of all users
      responses:
        '200':
          description: A list of users
          content:
            application/json:
              schema:
                type: array
                items:
                  $ref: '#/components/schemas/User'
    post:
      summary: Create a new user
      description: Creates a new user
      requestBody:
        required: true
        content:
          application/json:
            schema:
              $ref: '#/components/schemas/User'
      responses:
        '201':
          description: User created
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/User'
components:
  schemas:
    User:
      type: object
      properties:
        id:
          type: integer
          example: 1
        name:
          type: string
          example: John Doe
        email:
          type: string
          format: email
          example: john@example.com
      required:
        - name
        - email
```

### Markdown documentation example
```markdown
# Installation Guide

This guide will help you install and configure the application.

## Prerequisites

- Python 3.8 or higher
- pip package manager
- Virtual environment (recommended)

## Installation Steps

### 1. Clone the repository

```bash
git clone https://github.com/example/project.git
cd project
```

### 2. Create a virtual environment

```bash
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
```

### 3. Install dependencies

```bash
pip install -r requirements.txt
```

### 4. Configure the application

Copy the example configuration file:

```bash
cp config.example.yaml config.yaml
```

Edit the configuration file to match your environment:

```yaml
# config.yaml
database:
  host: localhost
  port: 5432
  name: myapp
  user: myapp
  password: secret
```

### 5. Run the application

```bash
python -m myapp
```

## Troubleshooting

### Common Issues

**Issue: ImportError: No module named 'myapp'**

Solution: Make sure you've installed the dependencies and activated the virtual environment.

**Issue: Connection refused to database**

Solution: Check that the database is running and the connection parameters in config.yaml are correct.

## Next Steps

After installation, you may want to:

- [Configure authentication](authentication.md)
- [Set up monitoring](monitoring.md)
- [Deploy to production](deployment.md)
```

## References

- [MkDocs Documentation](https://www.mkdocs.org/)
- [Sphinx Documentation](https://www.sphinx-doc.org/)
- [Docusaurus Documentation](https://docusaurus.io/)
- [Markdown Guide](https://www.markdownguide.org/)
- [OpenAPI Specification](https://spec.openapis.org/oas/v3.0.3)
- [Swagger Documentation](https://swagger.io/docs/)
- [Redoc Documentation](https://redocly.github.io/redoc/)