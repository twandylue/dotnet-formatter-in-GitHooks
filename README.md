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
- [.editorConfig](https://learn.microsoft.com/en-us/dotnet/fundamentals/code-analysis/configuration-files#editorconfig)
- [pre-commit](https://prettier.io/docs/en/precommit.html)
