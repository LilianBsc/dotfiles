# Quick Start Guide for Agent Skills

## Getting Started

### 1. Activate Skills

The skills are automatically loaded from `/home/lilian/.vibe/skills/` and enabled in the configuration.

### 2. Using Skills

To use a specific skill, simply reference it in your commands:

```bash
# Switch to Python Development mode
skills_use(name="python_development")

# Now you can ask Python-specific questions
"How do I write a TDD test for this function?"
"Debug this Python error: NameError: name 'x' is not defined"
"Help me refactor this code to follow PEP 8"
```

### 3. Skill-Specific Commands

#### Python Development
```bash
# Create a new Python project
uv init --name my_project

# Write tests first (TDD)
pytest --collect-only

# Run linting and formatting
ruff check .
ruff format .

# Run type checking
mypy src/
```

#### SRE/DevOps
```bash
# Initialize Terraform
terraform init

# Plan infrastructure changes
tterraform plan

# Apply infrastructure changes
tterraform apply

# Check Kubernetes resources
kubectl get pods
kubectl get deployments
```

#### CyberSecurity
```bash
# Scan for vulnerabilities
trivy fs .

# Scan container images
trivy image myapp:latest

# Check system security
lynis audit system
```

#### Documentation
```bash
# Create documentation site
mkdocs new my-docs

# Serve documentation locally
mkdocs serve

# Build documentation
mkdocs build
```

#### Codebase Discovery
```bash
# Analyze codebase structure
find . -name "*.py" -type f

# Analyze dependencies
grep -r "import" . --include="*.py" | sort | uniq -c | sort -nr

# Generate architecture diagrams
pyreverse -o png -p myproject src/
```

## Common Workflows

### Python Development Workflow
1. `skills_use(name="python_development")`
2. Write tests first: `pytest --collect-only`
3. Implement code to pass tests
4. Run linting: `ruff check .`
5. Format code: `ruff format .`
6. Type check: `mypy src/`
7. Run tests: `pytest`

### SRE/DevOps Workflow
1. `skills_use(name="sre_devops")`
2. Define infrastructure: `terraform init`
3. Plan changes: `terraform plan`
4. Apply changes: `terraform apply`
5. Monitor resources: `kubectl get pods`
6. Set up monitoring: `prometheus --config.file=prometheus.yml`

### Security Workflow
1. `skills_use(name="cybersecurity")`
2. Scan code: `trivy fs .`
3. Scan containers: `trivy image myapp:latest`
4. Harden system: `lynis audit system`
5. Monitor threats: `falco --pidfile=/var/run/falco/falco.pid`

### Documentation Workflow
1. `skills_use(name="documentation")`
2. Create site: `mkdocs new my-docs`
3. Write documentation in Markdown
4. Preview: `mkdocs serve`
5. Build: `mkdocs build`
6. Deploy: `mkdocs deploy`

### Codebase Discovery Workflow
1. `skills_use(name="codebase_discovery")`
2. Explore structure: `find . -name "*.py" -type f`
3. Analyze dependencies: `grep -r "import" . --include="*.py"`
4. Generate diagrams: `pyreverse -o png -p myproject src/`
5. Document architecture

## Tips and Tricks

### Switching Between Skills
```bash
# Switch to Python Development
skills_use(name="python_development")

# Switch to SRE/DevOps
skills_use(name="sre_devops")

# Switch to CyberSecurity
skills_use(name="cybersecurity")

# Switch to Documentation
skills_use(name="documentation")

# Switch to Codebase Discovery
skills_use(name="codebase_discovery")
```

### Combining Skills
You can combine skills for complex tasks:
```bash
# First analyze the codebase
skills_use(name="codebase_discovery")
"Analyze this Python project structure"

# Then implement improvements
skills_use(name="python_development")
"Help me refactor this code following best practices"

# Finally document the changes
skills_use(name="documentation")
"Write documentation for these changes"
```

### Skill-Specific Questions

**Python Development:**
- "How do I implement TDD for this feature?"
- "Debug this Python error"
- "Refactor this code to follow PEP 8"
- "Write tests for this function"

**SRE/DevOps:**
- "How do I deploy this to Kubernetes?"
- "Set up monitoring for this application"
- "Troubleshoot this deployment issue"
- "Configure CI/CD pipeline"

**CyberSecurity:**
- "Scan this code for vulnerabilities"
- "Harden this container image"
- "Detect threats in these logs"
- "Implement security best practices"

**Documentation:**
- "Write API documentation for this service"
- "Create user guide for this application"
- "Generate documentation from code comments"
- "Set up documentation website"

**Codebase Discovery:**
- "Analyze this codebase structure"
- "Map dependencies in this project"
- "Generate architecture diagram"
- "Find all entry points in this application"

## Troubleshooting

### Skill Not Found
If a skill is not found, check:
1. The skill file exists in `/home/lilian/.vibe/skills/`
2. The skill is listed in `enabled_skills` in config.toml
3. The skill name is spelled correctly

### Skill Not Working
If a skill is not working as expected:
1. Check the skill documentation for correct usage
2. Verify the required tools are installed
3. Check the skill configuration
4. Report issues to the skill maintainer

### Configuration Issues
If you encounter configuration issues:
1. Check the main `config.toml` file
2. Verify skill paths are correct
3. Ensure skills are enabled
4. Restart the agent if needed

## Support

For more information, refer to the individual skill documentation files in `/home/lilian/.vibe/skills/`.