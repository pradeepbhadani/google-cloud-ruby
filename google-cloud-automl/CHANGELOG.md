# Release History

### 0.4.0 / 2019-10-29

#### Features

* Update Ruby dependency to minimum of 2.4 ([#4206](https://www.github.com/googleapis/google-cloud-ruby/issues/4206))

### 0.3.0 / 2019-10-01

#### Features

* Support model deployment metadata for image classification
  * Add image_classification_model_deployment_metadata argument to AutoMLClient#deploy_model
  * Add ImageClassificationModelDeploymentMetadata class

### 0.2.0 / 2019-08-23

#### Features

* Update Document
  * Add Document#document_text (TextSnippet)
  * Add Document#layout (Document::Layout)
  * Add Document#document_dimensions (DocumentDimensions)
  * Add Document#page_count
  * Add Document::Layout
  * Add DocumentDimensions
* Update PredictionServiceClient#predict response
  * Add PredictResponse#preprocessed_input (ExamplePayload)
* Add BatchPredictResult#metadata.
* Add ConfusionMatrix#display_name
* Add TableSpec#valid_row_count
* Deprecate ColumnSpec#top_correlated_columns

#### Documentation

* Update documentation

### 0.1.0 / 2019-07-15

* Initial release.
