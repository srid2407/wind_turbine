test_that("land_footprint_works", {
  expect_true(land_footprint(rd = 90, pwr = 2)>0)
  expect_true(land_footprint(rd = 90, pwr = 2)!=land_footprint(rd = 150, pwr = 4))
})
