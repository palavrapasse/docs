# linting-tools

This file keeps track of the decisions taken to choose the linting tools for Svelte codebases.

---

Regarding Svelte codebases, we use the bundled Svelte-kit tools for linting and formatting (`prettier`).

## Usage

Run linting analysis with:

```bash
npm run lint
```

Format the codebase using:

```bash
npm run format
```

## Continuous Linting

For now we have a client-side check that runs `prettier` before pushing new commits. If the codebase is found inconsistent per linting rules or formatting, the commits cannot be pushed and the codebase needs to be fixed. You can find the hook in [pre-push](src/git-hooks/pre-push).