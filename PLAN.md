# Execution Plan: Initializing `omnideck-dev/homebrew-omnideck`

This roadmap details the steps required to configure, populate, and publish the custom Homebrew Tap allowing users to run `brew install omnideck-dev/omnideck`.

## Phase 1: Repository Setup & Scaffolding

* [ ] **Step 1.1:** Create a new public repository under the GitHub organization named `homebrew-omnideck`.
* *Note:* Do not name it `homebrew-tap`; naming it `homebrew-omnideck` is what enables the shortened `omnideck-dev/omnideck` installation path.


* [ ] **Step 1.2:** Initialize the repository locally with an essential structure:
```bash
git clone [https://github.com/omnideck-dev/homebrew-omnideck.git](https://github.com/omnideck-dev/homebrew-omnideck.git)
cd homebrew-omnideck
mkdir Formula

```



## Phase 2: Create Context & Tooling Docs

* [ ] **Step 2.1:** Commit the developer guidelines and project memory files directly to the root of the main branch:
* Add `claude.md` (AI instructions, architecture guardrails, and version update steps).
* Add `plan.md` (this progress-tracking file).



## Phase 3: Crafting the Formula (`Formula/omnideck.rb`)

* [ ] **Step 3.1:** Locate the latest stable release tag of your core CLI tool at `omnideck-dev/cli`.
* [ ] **Step 3.2:** Download the release target tarball and calculate its explicit SHA-256 validation hash:
```bash
curl -LO [https://github.com/omnideck-dev/cli/archive/refs/tags/v1.0.0.tar.gz](https://github.com/omnideck-dev/cli/archive/refs/tags/v1.0.0.tar.gz)
shasum -a 256 v1.0.0.tar.gz

```


* [ ] **Step 3.3:** Create and write the Ruby installation specifications inside `Formula/omnideck.rb`:
```ruby
class Omnideck < Formula
  desc "CLI tool for managing the Omnideck agent harness container"
  homepage "[https://github.com/omnideck-dev/cli](https://github.com/omnideck-dev/cli)"
  url "[https://github.com/omnideck-dev/cli/archive/refs/tags/v1.0.0.tar.gz](https://github.com/omnideck-dev/cli/archive/refs/tags/v1.0.0.tar.gz)"
  sha256 "TARGET_SHA256_HASH_HERE"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(output: bin/"omnideck"), "./main.go"
  end

  test do
    assert_match "omnideck version", shell_output("#{bin}/omnideck --version")
  end
end

```



## Phase 4: Validation & Publication

* [ ] **Step 4.1:** Commit all changes, push them to the main remote branch of `omnideck-dev/homebrew-omnideck`, and make the repository public.
* [ ] **Step 4.2:** Run an end-to-end integration test on a macOS machine to verify target syntax discovery:
```bash
brew install omnideck-dev/omnideck
omnideck --version

```

