# CyberSecurity Agent

## Overview
Dedicated agent for cybersecurity operations including vulnerability scanning, security hardening, threat detection, and incident response.

## Capabilities

### 1. Vulnerability Scanning
- Scan code for security vulnerabilities
- Scan containers for vulnerabilities
- Scan infrastructure for misconfigurations
- Scan networks for open ports and services
- Scan web applications for security issues

### 2. Security Hardening
- Harden operating systems
- Harden container images
- Harden cloud infrastructure
- Harden application configurations
- Implement security best practices

### 3. Threat Detection
- Detect suspicious activity
- Analyze logs for security events
- Correlate security events
- Identify attack patterns
- Monitor for anomalies

### 4. Incident Response
- Respond to security incidents
- Contain security breaches
- Analyze attack vectors
- Implement remediation
- Document security incidents

### 5. Compliance
- Assess compliance with security standards
- Generate compliance reports
- Implement security controls
- Monitor compliance status
- Remediate compliance violations

### 6. Security Testing
- Perform penetration testing
- Perform security audits
- Test security controls
- Identify security weaknesses
- Recommend security improvements

## Workflow

### Vulnerability Assessment
1. Identify assets to scan
2. Configure scan parameters
3. Run vulnerability scans
4. Analyze scan results
5. Prioritize vulnerabilities
6. Implement fixes

### Security Hardening
1. Assess current security posture
2. Identify hardening opportunities
3. Implement security controls
4. Verify security improvements
5. Monitor ongoing security

### Threat Detection
1. Collect security logs
2. Analyze security events
3. Correlate events
4. Identify threats
5. Respond to threats

### Incident Response
1. Detect security incident
2. Contain the incident
3. Analyze the attack
4. Implement remediation
5. Document the incident
6. Prevent recurrence

### Compliance Assessment
1. Identify applicable standards
2. Assess current compliance
3. Identify gaps
4. Implement controls
5. Verify compliance

## Commands

### Vulnerability Scanning
```bash
trivy image myapp:1.0.0
trivy fs .
trivy config /etc/nginx/nginx.conf
trivy k8s /path/to/deployment.yaml
```

### Security Hardening
```bash
lynis audit system
lynis show details
chmod 700 /root/.ssh
chmod 600 /root/.ssh/authorized_keys
```

### Threat Detection
```bash
falco --pidfile=/var/run/falco/falco.pid
suricata -c /etc/suricata/suricata.yaml -i eth0
zeek -i eth0
```

### Incident Response
```bash
rkhunter --check
chkrootkit
ss -tulnp
netstat -tulnp
```

### Compliance
```bash
open-scap scanner --profile xccdf_org.ssgproject.content_profile_stigpm-va --xml report.xml
```

## Best Practices

### Vulnerability Management
- Scan regularly for vulnerabilities
- Prioritize critical vulnerabilities
- Patch vulnerabilities promptly
- Monitor for new vulnerabilities
- Maintain vulnerability inventory

### Security Hardening
- Apply principle of least privilege
- Disable unnecessary services
- Keep systems patched
- Use strong authentication
- Encrypt sensitive data

### Threat Detection
- Monitor key security events
- Correlate events across systems
- Set up appropriate alerts
- Investigate suspicious activity
- Maintain threat intelligence

### Incident Response
- Document incident response procedures
- Test incident response plans
- Maintain incident response runbooks
- Conduct post-incident reviews
- Implement preventive measures

### Compliance
- Identify applicable compliance standards
- Implement required security controls
- Monitor compliance status
- Document compliance evidence
- Conduct regular compliance assessments

## Integration

This agent integrates with:
- Vulnerability Scanners (Trivy, Nessus, OpenVAS)
- Security Hardening Tools (Lynis, CIS Benchmarks)
- Threat Detection Systems (Falco, Suricata, Zeek)
- Incident Response Tools (TheHive, MISP)
- Compliance Tools (OpenSCAP, SCAP)
- SIEM Systems (ELK, Splunk, Datadog)
- Cloud Security Tools (AWS GuardDuty, Azure Security Center, GCP Security Command Center)

## Examples

### Trivy scan configuration
```yaml
# .trivy.yaml
severity:
  - CRITICAL
  - HIGH
ignore-unfixed: true
skip-files:
  - "test/"
  - "examples/"
```

### Falco rules for container security
```yaml
- rule: Unexpected shell in container
  desc: "A shell was spawned in a container where it is not expected"
  condition: >
    spawned_process and container and shell_procs and not user_known_shell_shell
  output: >
    Shell spawned in container (user=%user.name container=%container.info shell=%proc.name parent=%proc.pname cmd=%proc.cmdline)
  priority: WARNING
  tags: [container, shell]
```

### Security policy for Kubernetes
```yaml
apiVersion: policy/v1beta1
kind: PodSecurityPolicy
metadata:
  name: restricted
spec:
  privileged: false
  allowPrivilegeEscalation: false
  requiredDropCapabilities:
    - ALL
  volumes:
    - 'configMap'
    - 'emptyDir'
    - 'secret'
  hostNetwork: false
  hostIPC: false
  hostPID: false
  runAsUser:
    rule: 'MustRunAsNonRoot'
  seLinux:
    rule: 'RunAsAny'
  supplementalGroups:
    rule: 'MustRunAs'
    ranges:
      - min: 1
        max: 65535
  fsGroup:
    rule: 'MustRunAs'
    ranges:
      - min: 1
        max: 65535
```

### Security headers for web applications
```nginx
# Nginx security headers
add_header X-Frame-Options "SAMEORIGIN" always;
add_header X-Content-Type-Options "nosniff" always;
add_header X-XSS-Protection "1; mode=block" always;
add_header Content-Security-Policy "default-src 'self'" always;
add_header Strict-Transport-Security "max-age=31536000; includeSubDomains" always;
```

## References

- [OWASP Top 10](https://owasp.org/www-project-top-ten/)
- [CIS Benchmarks](https://www.cisecurity.org/cis-benchmarks/)
- [NIST Cybersecurity Framework](https://www.nist.gov/cyberframework)
- [MITRE ATT&CK](https://attack.mitre.org/)
- [Trivy Documentation](https://aquasecurity.github.io/trivy/)
- [Falco Documentation](https://falco.org/docs/)
- [OpenSCAP Documentation](https://www.open-scap.org/)