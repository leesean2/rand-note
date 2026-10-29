# Contributing

Thank you for considering a contribution to Public Note Board. Please keep contributions focused, explain the problem they solve, and make them straightforward to review.

## Before you start

- For substantial features or behavior changes, open or join an issue before starting work so the approach can be discussed. Small fixes and documentation improvements can go directly to a pull request.
- Keep each pull request focused on one problem. Avoid unrelated changes and formatting churn.
- Follow the existing project conventions and consult the [README](README.md) for architecture and operational details.

## Set up a local environment

The project requires Rust, the `wasm32-unknown-unknown` target, Node.js/npm, Wrangler, and `worker-build`. See the [README's local development section](README.md#local-development) for prerequisites and setup instructions. The main setup commands are:

```sh
rustup target add wasm32-unknown-unknown
cargo install worker-build
npm install
npm run migrate:local
```

For local development, start the Worker API and Pages frontend in separate terminals:

```sh
npm run dev:worker
npm run dev:pages
```

The Pages site is served at `http://localhost:8788` and the local API at `http://localhost:8787`.

## Verify your changes

Before opening a pull request, run the checks relevant to your changes. The project's standard checks are:

```sh
npm run fmt
npm test
npm run build:worker
```

For frontend changes, also run the local site and manually check the affected page and behavior. If a check cannot be run, say so and explain why in the pull request.

## Frontend screenshots are required

Every pull request that changes frontend code or assets must include at least one **landscape (horizontal, wider-than-tall) screenshot** of the resulting site, attached to the pull request description. This requirement applies to **all** frontend changes, including refactors and behavior changes that do not visibly alter the layout. For changes affecting multiple screens or states, include enough screenshots to show the affected areas. A pull request with frontend changes and no landscape screenshot is incomplete.

## Use of AI tools

AI-assisted tools are allowed. Using them does not transfer responsibility for a contribution: the submitter must understand the changes, review them carefully, verify that they fit the project, and take full responsibility for their correctness and quality. Review generated changes yourself and run the applicable checks; do not treat generated output as verified merely because a tool produced it.

There is no requirement to disclose AI use. However, pull requests that are little more than unreviewed, low-effort AI-generated output—with no clear problem, project-specific rationale, or meaningful validation—may be ignored or closed without an individual response.

## Keep secrets out of contributions

Never commit secrets, credentials, or local-only configuration. In particular, do not include `.dev.vars`, `ADMIN_TOKEN` values, or other private environment values in a patch, screenshot, issue, or pull request.

## Pull request checklist

- [ ] The pull request explains the problem, the approach, and the resulting behavior.
- [ ] Relevant verification commands and their results are reported; any checks not run are explained.
- [ ] If frontend code or assets changed, a landscape screenshot of the resulting UI is attached.
- [ ] No secrets or local-only configuration are included.
