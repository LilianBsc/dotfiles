# Agent Skills Directory

This directory contains specialized agent skills for different development and operations tasks.

## Available Skills

### 1. Python Development (`python_development.md`)
- Python coding, debugging, and testing
- TDD workflow implementation
- Code quality and best practices
- Tooling with uv, pytest, ruff, mypy

### 2. SRE/DevOps (`sre_devops.md`)
- Infrastructure as code (Terraform, Pulumi)
- Kubernetes cluster management
- CI/CD pipeline configuration
- Monitoring and observability (Prometheus, Grafana)
- Incident response and troubleshooting

### 3. CyberSecurity (`cybersecurity.md`)
- Vulnerability scanning (Trivy, bandit)
- Security hardening (Lynis, CIS benchmarks)
- Threat detection (Falco, Suricata)
- Incident response and remediation
- Compliance assessment

### 4. Documentation (`documentation.md`)
- Technical writing and documentation
- API documentation (OpenAPI, Swagger)
- Knowledge management and organization
- Documentation tools (MkDocs, Sphinx, Docusaurus)
- Documentation workflows and best practices

### 5. Codebase Discovery (`codebase_discovery.md`)
- Codebase exploration and analysis
- Architecture analysis and visualization
- Dependency analysis and mapping
- Code navigation and search
- Documentation generation

## Usage

To use a specific skill, reference it in your commands:

```bash
# Use Python Development skill
skills_use(name="python_development")

# Use SRE/DevOps skill  
skills_use(name="sre_devops")

# Use CyberSecurity skill
skills_use(name="cybersecurity")

# Use Documentation skill
skills_use(name="documentation")

# Use Codebase Discovery skill
skills_use(name="codebase_discovery")
```

## Integration

All skills are designed to work together and can be combined as needed for complex tasks.

## Configuration

Skills can be configured in the main `config.toml` file by adding them to the `skill_paths` and `enabled_skills` sections.

```toml
skill_paths = ["/home/lilian/.vibe/skills"]
enabled_skills = ["python_development", "sre_devops", "cybersecurity", "documentation", "codebase_discovery"]
```

## Development

To add new skills:
1. Create a new markdown file in this directory
2. Follow the existing format and structure
3. Add the skill to the configuration
4. Test the skill integration

## Support

For issues or questions about specific skills, refer to the documentation within each skill file or consult the references provided in each skill.

## License

This work is licensed under the MIT License.