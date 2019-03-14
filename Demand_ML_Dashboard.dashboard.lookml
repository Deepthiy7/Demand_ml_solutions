- dashboard: Demand_ML_Dashboard
  title: Demand_ML_Dashboard
  layout: newspaper
  refresh: 1 hour
  elements:
  - name: Actual v/s Predicted
    type: text
    title_text: Actual v/s Predicted
    row: 0
    col: 5
    width: 13
    height: 2
  - title: January - 2019
    name: January - 2019
    model: demand_forecast
    explore: third_max_month
    type: looker_line
    fields:
    - third_max_month.actual
    - third_max_month.predicted
    - third_max_month.date
    fill_fields:
    - third_max_month.date
    filters: {}
    sorts:
    - third_max_month.actual desc
    limit: 500
    query_timezone: America/Los_Angeles
    trellis: ''
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    series_labels:
      third_max_month.actual: Actual
      third_max_month.predicted: Predicted
    limit_displayed_rows: false
    y_axes:
    - label: Units
      orientation: left
      series:
      - id: third_max_month.actual
        name: Third Max Month Actual
        axisId: third_max_month.actual
      - id: third_max_month.predicted
        name: Third Max Month Predicted
        axisId: third_max_month.predicted
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    show_null_points: true
    interpolation: linear
    listen:
      Product Family: third_max_month.product_family
      UPC: third_max_month.upc_code
    row: 2
    col: 0
    width: 8
    height: 6
  - title: March -2019
    name: March -2019
    model: demand_forecast
    explore: first_max_month
    type: looker_line
    fields:
    - first_max_month.date
    - first_max_month.actual
    - first_max_month.predicted
    fill_fields:
    - first_max_month.date
    filters:
      first_max_month.month: ''
    sorts:
    - first_max_month.date desc
    limit: 500
    query_timezone: America/Los_Angeles
    trellis: ''
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    series_labels:
      first_max_month.actual: Actual
      first_max_month.predicted: Predicted
    limit_displayed_rows: false
    y_axes:
    - label: Units
      orientation: left
      series:
      - id: first_max_month.actual
        name: First Max Month Actual
        axisId: first_max_month.actual
      - id: first_max_month.predicted
        name: First Max Month Predicted
        axisId: first_max_month.predicted
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    show_null_points: true
    interpolation: linear
    listen:
      Product Family: first_max_month.product_family
      UPC: first_max_month.upc_code
    row: 2
    col: 16
    width: 8
    height: 6
  - title: February - 2019
    name: February - 2019
    model: demand_forecast
    explore: second_max_month
    type: looker_line
    fields:
    - second_max_month.date
    - second_max_month.actual
    - second_max_month.predicted
    fill_fields:
    - second_max_month.date
    filters: {}
    sorts:
    - second_max_month.date desc
    limit: 500
    query_timezone: America/Los_Angeles
    trellis: ''
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    series_labels:
      second_max_month.actual: Actual
      second_max_month.predicted: Predicted
    limit_displayed_rows: false
    y_axes:
    - label: Units
      orientation: left
      series:
      - id: second_max_month.actual
        name: Actual
        axisId: second_max_month.actual
      - id: second_max_month.predicted
        name: Predicted
        axisId: second_max_month.predicted
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Date
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    show_null_points: true
    interpolation: linear
    listen:
      Product Family: second_max_month.product_family
      UPC: second_max_month.upc_code
    row: 2
    col: 8
    width: 8
    height: 6
  - title: Top Sku'S by Forecast Deviation
    name: Top Sku'S by Forecast Deviation
    model: demand_forecast
    explore: forecast_deviation
    type: looker_column
    fields:
    - forecast_deviation.sku
    - forecast_deviation.upc_code
    - forecast_deviation.count
    filters:
      forecast_deviation.forecast_deviation: ">0.3"
      forecast_deviation.product_family: ''
    sorts:
    - forecast_deviation.sku
    limit: 500
    query_timezone: America/Los_Angeles
    trellis: ''
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    series_labels:
      forecast_deviation.count: Forecast Deviation
    series_types: {}
    limit_displayed_rows: false
    y_axes:
    - label: Forecast Deviation
      orientation: left
      series:
      - id: forecast_deviation.count
        name: Forecast Deviation Count
        axisId: forecast_deviation.count
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: SKU
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen: {}
    row: 14
    col: 7
    width: 8
    height: 6
  - title: Top Sku's by shortage
    name: Top Sku's by shortage
    model: demand_forecast
    explore: cummulative_predicted_supply
    type: looker_column
    fields:
    - cummulative_predicted_supply.count
    - cummulative_predicted_supply.sku
    - cummulative_predicted_supply.upc_code
    filters:
      cummulative_predicted_supply.cumulative_predictive_supply: "<0"
    sorts:
    - cummulative_predicted_supply.count desc
    limit: 500
    query_timezone: America/Los_Angeles
    trellis: ''
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    series_labels:
      cummulative_predicted_supply.count: Shortage Instances
    series_types: {}
    limit_displayed_rows: false
    y_axes:
    - label: Shortage Instances
      orientation: left
      series:
      - id: cummulative_predicted_supply.count
        name: Cummulative Predicted Supply Count
        axisId: cummulative_predicted_supply.count
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Product Family: cummulative_predicted_supply.product_family
      UPC: cummulative_predicted_supply.upc_code
    row: 8
    col: 12
    width: 8
    height: 6
  - title: Top Sku's with Excess inventory
    name: Top Sku's with Excess inventory
    model: demand_forecast
    explore: extent_instance
    type: looker_column
    fields:
    - extent_instance.sku
    - extent_instance.upc_code
    - extent_instance.count
    filters:
      extent_instance.sku: ''
      extent_instance.excess_instance_type: '1'
    sorts:
    - extent_instance.count desc
    limit: 500
    query_timezone: America/Los_Angeles
    trellis: ''
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    series_labels:
      extent_instance.count: Excess Instances
    limit_displayed_rows: false
    y_axes:
    - label: Excess Instance
      orientation: left
      series:
      - id: extent_instance.count
        name: Extent Instance Count
        axisId: extent_instance.count
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Product Family: extent_instance.product_family
      UPC: extent_instance.upc_code
    row: 8
    col: 3
    width: 8
    height: 6
  filters:
  - name: Product Family
    title: Product Family
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: demand_forecast
    explore: sku_data
    listens_to_filters:
    - UPC
    - Cummulative Predicted Supply
    field: sku_data.product_family
  - name: UPC
    title: UPC
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: demand_forecast
    explore: sku_data
    listens_to_filters:
    - Product Family
    - Cummulative Predicted Supply
    field: sku_data.upc_code
