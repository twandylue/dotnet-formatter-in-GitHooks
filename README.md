# dotnet-formatter-in-GitHooks

Introduce how to use dotnet format in Git Hooks.

> Check coding format with `.editorconfig` in CI pipelines in GitLab.  
> See [my demo project in GitLab](https://gitlab.com/my-group1177/format-in-ci-demo) for more details.

## Prerequisite

- dotnet sdk >= 6.0 (Already including `dotnet format` in default)
- (optional) [dotnet format](https://github.com/dotnet/format) (if dotnet sdk < 6.0)

## Purpose

### dotnet format + Git Hooks

Using `dotnet format` as the formatter in [Git Hooks](https://git-scm.com/book/zh-tw/v2/Customizing-Git-Git-Hooks) to help re-format your code before every commit.

## How to Start

### Step 1

Prepare a folder to put your pre-commit file.

```console
mkdir .githooks
cd .githooks/
touch pre-commit
```

> Important: make your pre-commit file (or other files under `.githooks/`) executable

```console
chmod ug+x .githooks/*
```

### Step 2

In your `pre-commit` file, input the content as below.

```bash
#!/bin/sh
LC_ALL=C
# Select files to format
FILES=$(git diff --cached --name-only --diff-filter=ACM "*.cs" | sed 's| |\\ |g')
[ -z "$FILES" ] && exit 0

# Format all selected files
echo "$FILES" | cat | xargs dotnet format whitespace --folder --include

# Add back the modified files to staging
echo "$FILES" | xargs git add

exit 0
```

### Step 3

Then, in Git 2.9, the configuration option [core.hooksPath](https://git-scm.com/docs/git-config#Documentation/git-config.txt-corehooksPath) specifies a custom hooks directory.

```console
git config core.hooksPath .githooks
```

### Step 4

Create a `.editorconfig` file in the root directory.

```plain
❯ tree -a
.
├── .editorConfig
└── .githooks
    └── pre-commit
```

You can set your own .editorconfig file according to [C# formatting options](https://learn.microsoft.com/en-us/dotnet/fundamentals/code-analysis/style-rules/csharp-formatting-options).

> By the way, you should definitely include both `.editorconfig` and `.githooks/` into version control.

## How to Migrate

If your repository is alreay on the fly, you are still able to set pre-commit easily.

All you need to do is:

- [ ] [Create `.githooks/pre-commit`](#step-1) in branch `main`.
- [ ] **Important**: [Make `.githooks/pre-commit` executable](#step-1) in local device.
- [ ] [Set your git config](#step-3) in local device.
- [ ] [Create `.editorconfig`](#step-4) in branch `main`.

## References

- [dotnet format in GitHub](https://github.com/dotnet/format)
- [dotnet format in Microsoft](https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-format)
- [C# formatting options](https://learn.microsoft.com/en-us/dotnet/fundamentals/code-analysis/style-rules/csharp-formatting-options)
- [.editorConfig](https://learn.microsoft.com/en-us/dotnet/fundamentals/code-analysis/configuration-files#editorconfig)
- [Git Hooks pre-commit](https://git-scm.com/book/en/v2/Customizing-Git-Git-Hooks)
- [make .githooks/* executable](https://stackoverflow.com/questions/8598639/why-is-my-git-pre-commit-hook-not-executable-by-default)
- [sharing git hooks](https://mranderson.nl/2020/10/25/how-to-share-git-hooks/)
