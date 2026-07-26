# JavaScript, TypeScript, JSX and React

## Detection

Inspect `package.json` scripts and lock files. Use the configured package manager.

## Fast repair order

1. Formatter on changed files.
2. ESLint auto-fix on changed files.
3. TypeScript type check.
4. Relevant component/unit tests.
5. Build affected application.
6. Mandatory business E2E or domain workflow test.

Typical commands, only when compatible with project configuration:

```bash
npx prettier --write <changed-files>
npx eslint <changed-files> --fix
npx tsc --noEmit
npm test -- <relevant-test>
npm run build
```

For JSX structural errors, use parser/compiler locations. Do not regex-rewrite complex JSX.

## Business verification

Prefer Playwright for new web E2E when the project has no existing E2E tool. Reuse Cypress, WebdriverIO, or another configured framework if present.
