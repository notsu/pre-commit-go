
pre-commit-go
=================

golang hooks for http://pre-commit.com/

### Using these hooks

Add this to your `.pre-commit-config.yaml`

    - repo: https://github.com/dnephin/pre-commit-golang
      rev: HEAD
      hooks:
        - id: go-fmt
        - id: go-vet
        - id: go-lint
        - id: go-test
        - id: gometalinter

### Available hooks

- `go-fmt` - Runs `gofmt`, requires golang
- `go-vet` - Runs `go vet`, requires golang
- `go-lint` - Runs `golint`, requires https://github.com/golang/lint
- `validate-toml` - Runs `tomlv`, requires
   https://github.com/BurntSushi/toml/tree/master/cmd/tomlv
- `no-go-testing` - Checks that no files are using `testing.T`, if you want
  developers to use a different testing framework
- `gometalinter` - run `gometalinter --config gometalinter.json ./...`
- `golangci-lint` - run `golangci-lint run ./...`, requires
  [golangci-lint](https://github.com/golangci/golangci-lint)
- `go-critic` - run `gocritic check-project .`, requires [go-critic](https://github.com/go-critic/go-critic)

### Reference

- [pre-commit-golang](https://github.com/dnephin/pre-commit-golang)