# dotnet-formatter-in-GitHooks

Introduce how to use dotnet formatters in Git Hooks

## Notes

format each files under Subfolder

```bash
ls .\Subfolder\*.cs | dotnet format whitespace --folder 
```

## TODOs

1. 成員彼此間是否能空行(1 行)
2. 多餘的空行要刪除

## References

- [dotnet format in MS](https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-format)
- [dotnet format in GitHub](https://github.com/dotnet/format)
- [C# formatting options](https://learn.microsoft.com/en-us/dotnet/fundamentals/code-analysis/style-rules/csharp-formatting-options)
- [.editorConfig](https://learn.microsoft.com/en-us/dotnet/fundamentals/code-analysis/configuration-files#editorconfig)
- [pre-commit](https://prettier.io/docs/en/precommit.html)
- [sharing git hooks](https://mranderson.nl/2020/10/25/how-to-share-git-hooks/)
