connection: "demand_forecast"

# include all the views
include: "*.view"
include: "*.dashboard"

datagroup: demand_forcast_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}



persist_with: demand_forcast_default_datagroup

explore: sku_data {}

explore: extent_instance{}

explore: cummulative_predicted_supply{}

explore: first_max_month {}

explore: second_max_month {}

explore: third_max_month {}

explore: forecast_deviation {}
