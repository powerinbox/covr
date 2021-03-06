context("cobertura_export")
cov <- package_coverage("TestSummary")

test_that("it works with coverage objects", {
      tmp <- tempfile()
      to_cobertura(cov, filename = tmp)
      expect_equal(readLines(tmp)[-2], readLines("cobertura.xml")[-2])
    })
