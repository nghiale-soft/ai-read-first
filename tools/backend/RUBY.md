# Ruby and Rails

Typical order:

```bash
bundle exec rubocop -A <changed-files>
ruby -c <file>
bundle exec rspec <relevant-spec>
```

Rails checks when applicable:

```bash
bin/rails zeitwerk:check
bin/rails test
```

Use request/system tests, Capybara, or an executable service/domain workflow test for business verification.
