# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-cybersec-theme"
  spec.version       = "0.1.0"
  spec.authors       = ["Security Team"]
  spec.summary       = "A dark, cybersecurity-focused Jekyll blog theme with terminal aesthetics and code highlighting"

  spec.files         = `git ls-files -z`.split("\x0").select { |f|
    f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README)!i)
  }

  spec.add_runtime_dependency "jekyll", ">= 3.9", "< 5.0"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.15"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.7"
end
