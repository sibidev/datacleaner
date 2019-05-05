library(testthat)

testthat::test_that("test windsorize",{
  expect_equal( windsorize(c(1:3)),c(1.1, 2, 2.9) ) 
})
