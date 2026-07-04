test_that("tests for non-pretrained model_rfdetr_nano", {
  model <- model_rfdetr_nano()
  input <- torch::torch_randn(1, 3, 384, 384)
  model$eval()
  out <- model(input)
  expect_tensor_shape(out$detections[[1]]$scores, 300)
  expect_tensor_shape(out$detections[[1]]$boxes, c(300, 4))

  rm(model)
  gc()
})

test_that("tests for pretrained model_rfdetr_nano", {

  skip_if(Sys.getenv("TEST_LARGE_MODELS", unset = 0) != 1,
      "Skipping test: set TEST_LARGE_MODELS=1 to enable tests requiring large downloads.")

  model <- model_rfdetr_nano(pretrained = TRUE)
  input <- torch::torch_randn(1, 3, 384, 384)
  model$eval()
  out <- model(input)
  expect_tensor_shape(out$detections[[1]]$scores, 300)
  expect_tensor_shape(out$detections[[1]]$boxes, c(300, 4))
  expect_coco_model_detects_cat(model, min_score = 0.1)

    rm(model)
  gc()
})

test_that("tests for non-pretrained model_rfdetr_small", {
  model <- model_rfdetr_small()
  input <- torch::torch_randn(1, 3, 512, 512)
  model$eval()
  out <- model(input)
  expect_tensor_shape(out$detections[[1]]$scores, 300)
  expect_tensor_shape(out$detections[[1]]$boxes, c(300, 4))

  rm(model)
  gc()
})

test_that("tests for pretrained model_rfdetr_small", {

  skip_if(Sys.getenv("TEST_LARGE_MODELS", unset = 0) != 1,
      "Skipping test: set TEST_LARGE_MODELS=1 to enable tests requiring large downloads.")

  model <- model_rfdetr_small(pretrained = TRUE)
  input <- torch::torch_randn(1, 3, 512, 512)
  model$eval()
  out <- model(input)
  expect_tensor_shape(out$detections[[1]]$scores, 300)
  expect_tensor_shape(out$detections[[1]]$boxes, c(300, 4))
  expect_coco_model_detects_cat(model, min_score = 0.1)

  rm(model)
  gc()
})

test_that("tests for non-pretrained model_rfdetr_medium", {
  model <- model_rfdetr_medium()
  input <- torch::torch_randn(1, 3, 640, 640)
  model$eval()
  out <- model(input)
  expect_tensor_shape(out$detections[[1]]$scores, 300)
  expect_tensor_shape(out$detections[[1]]$boxes, c(300, 4))

  rm(model)
  gc()
})

test_that("tests for pretrained model_rfdetr_medium", {

  skip_if(Sys.getenv("TEST_LARGE_MODELS", unset = 0) != 1,
      "Skipping test: set TEST_LARGE_MODELS=1 to enable tests requiring large downloads.")

  model <- model_rfdetr_medium(pretrained = TRUE)
  input <- torch::torch_randn(1, 3, 640, 640)
  model$eval()
  out <- model(input)
  expect_tensor_shape(out$detections[[1]]$scores, 300)
  expect_tensor_shape(out$detections[[1]]$boxes, c(300, 4))
  expect_coco_model_detects_cat(model, min_score = 0.1)

  rm(model)
  gc()
})

test_that("tests for non-pretrained model_rfdetr_base", {
  model <- model_rfdetr_base()
  input <- torch::torch_randn(1, 3, 640, 640)
  model$eval()
  out <- model(input)
  expect_tensor_shape(out$detections[[1]]$scores, 300)
  expect_tensor_shape(out$detections[[1]]$boxes, c(300, 4))

  rm(model)
  gc()
})

test_that("tests for pretrained model_rfdetr_base", {

  skip_if(Sys.getenv("TEST_LARGE_MODELS", unset = 0) != 1,
      "Skipping test: set TEST_LARGE_MODELS=1 to enable tests requiring large downloads.")

  model <- model_rfdetr_base(pretrained = TRUE)
  input <- torch::torch_randn(1, 3, 640, 640)
  model$eval()
  out <- model(input)
  expect_tensor_shape(out$detections[[1]]$scores, 300)
  expect_tensor_shape(out$detections[[1]]$boxes, c(300, 4))
  expect_coco_model_detects_cat(model)

  rm(model)
  gc()
})

test_that("tests for non-pretrained model_rfdetr_base_2", {
  model <- model_rfdetr_base_2()
  input <- torch::torch_randn(1, 3, 640, 640)
  model$eval()
  out <- model(input)
  expect_tensor_shape(out$detections[[1]]$scores, 300)
  expect_tensor_shape(out$detections[[1]]$boxes, c(300, 4))

  rm(model)
  gc()
})

test_that("tests for pretrained model_rfdetr_base_2", {

  skip_if(Sys.getenv("TEST_LARGE_MODELS", unset = 0) != 1,
      "Skipping test: set TEST_LARGE_MODELS=1 to enable tests requiring large downloads.")

  model <- model_rfdetr_base_2(pretrained = TRUE)
  input <- torch::torch_randn(1, 3, 640, 640)
  model$eval()
  out <- model(input)
  expect_tensor_shape(out$detections[[1]]$scores, 300)
  expect_tensor_shape(out$detections[[1]]$boxes, c(300, 4))
  expect_coco_model_detects_cat(model)

  rm(model)
  gc()
})

test_that("tests for non-pretrained model_rfdetr_base_o365", {
  model <- model_rfdetr_base_o365()
  input <- torch::torch_randn(1, 3, 640, 640)
  model$eval()
  out <- model(input)
  expect_tensor_shape(out$detections[[1]]$scores, 300)
  expect_tensor_shape(out$detections[[1]]$boxes, c(300, 4))

  rm(model)
  gc()
})

test_that("tests for pretrained model_rfdetr_base_o365", {

  skip_if(Sys.getenv("TEST_LARGE_MODELS", unset = 0) != 1,
      "Skipping test: set TEST_LARGE_MODELS=1 to enable tests requiring large downloads.")

  model <- model_rfdetr_base_o365(pretrained = TRUE)
  input <- torch::torch_randn(1, 3, 640, 640)
  model$eval()
  out <- model(input)
  expect_tensor_shape(out$detections[[1]]$scores, 300)
  expect_tensor_shape(out$detections[[1]]$boxes, c(300, 4))

  rm(model)
  gc()
})

test_that("tests for non-pretrained model_rfdetr_large", {
  model <- model_rfdetr_large()
  input <- torch::torch_randn(1, 3, 560, 560)
  model$eval()
  out <- model(input)
  expect_tensor_shape(out$detections[[1]]$scores, 300)
  expect_tensor_shape(out$detections[[1]]$boxes, c(300, 4))

  rm(model)
  gc()
})

test_that("tests for pretrained model_rfdetr_large", {

  skip_if(Sys.getenv("TEST_LARGE_MODELS", unset = 0) != 1,
      "Skipping test: set TEST_LARGE_MODELS=1 to enable tests requiring large downloads.")

  model <- model_rfdetr_large(pretrained = TRUE)
  input <- torch::torch_randn(1, 3, 560, 560)
  model$eval()
  out <- model(input)
  expect_tensor_shape(out$detections[[1]]$scores, 300)
  expect_tensor_shape(out$detections[[1]]$boxes, c(300, 4))

  rm(model)
  gc()
})
