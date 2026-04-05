# Branching Strategy

## Overview
This repository uses a simple **trunk-based** model with feature branches off `main`.

## Branch Structure

### `main` - Production Branch
- Production-ready code only
- Deploys to S3 + CloudFront (keith.thehodos.com)
- Direct commits: ❌ Never

### `feature/*` - Feature Branches
- Created from `main`
- Merged back to `main` via PR
- Deleted after merge

## Workflow

```bash
# Start new work
git checkout main
git pull origin main
git checkout -b content/new-post-title

# Work, commit, push
git add .
git commit -m "Add post: My New Post"
git push origin content/new-post-title

# Create PR → main via GitHub
```

## Branch Naming

- Content: `content/post-title`
- Config/theme: `config/description`
- Infrastructure: `infra/description`
- Bug fixes: `fix/description`

## Rules

- ✅ Create branches from `main`
- ✅ Use PRs for all changes
- ✅ Delete branches after merge
- ❌ Never commit directly to `main`
- ❌ Never force push to `main`
