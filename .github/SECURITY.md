# Security Policy

## Reporting a Vulnerability

Please report security issues via email to: keith@thehodos.com

## Security Best Practices

1. **Never commit secrets** — no AWS keys, API tokens, or credentials in config or content
2. **S3 bucket** — block public access, serve only via CloudFront OAC
3. **CloudFront** — enforce HTTPS, redirect HTTP → HTTPS
4. **Keep dependencies updated** — update Hugo and Blowfish theme regularly
5. **Branch protection** — all changes through pull requests
