# Go

```bash
gofmt -w <changed-files>
go vet ./<affected-package>/...
go test ./<affected-package>/...
go build ./...
```

Use `golangci-lint` only when configured.

Business verification should execute the affected HTTP/RPC/message/domain workflow.
