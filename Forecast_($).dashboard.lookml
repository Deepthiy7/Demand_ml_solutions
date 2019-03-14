- dashboard: forecast ($)
  title: Forecast ($)
  layout: newspaper
  elements:
  - title: March -2019
    name: March -2019
    model: demand_forecast
    explore: first_max_month
    type: looker_line
    fields:
    - first_max_month.date
    - first_max_month.actual_price
    - first_max_month.predicted_price
    filters: {}
    sorts:
    - first_max_month.date
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
      first_max_month.actual_price: Actual Price
      first_max_month.predicted_price: Predicted Price
    limit_displayed_rows: false
    y_axes:
    - label: Amount($)
      orientation: left
      series:
      - id: first_max_month.actual_price
        name: First Max Month Actual Price
        axisId: first_max_month.actual_price
      - id: first_max_month.predicted_price
        name: First Max Month Predicted Price
        axisId: first_max_month.predicted_price
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
    - second_max_month.actual_price
    - second_max_month.predicted_price
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
      second_max_month.actual_price: Actual Price
      second_max_month.predicted_price: Predicted Price
    limit_displayed_rows: false
    y_axes:
    - label: Amount($)
      orientation: left
      series:
      - id: second_max_month.actual_price
        name: Second Max Month Actual Price
        axisId: second_max_month.actual_price
      - id: second_max_month.predicted_price
        name: Second Max Month Predicted Price
        axisId: second_max_month.predicted_price
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
  - title: January - 2019
    name: January - 2019
    model: demand_forecast
    explore: third_max_month
    type: looker_line
    fields:
    - third_max_month.date
    - third_max_month.actual_price
    - third_max_month.predicted_price
    filters: {}
    sorts:
    - third_max_month.date desc
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
      third_max_month.actual_price: Actual Price
      third_max_month.predicted: Predicted
      third_max_month.predicted_price: Predicted Price
    limit_displayed_rows: false
    y_axes:
    - label: Amount($)
      orientation: left
      series:
      - id: third_max_month.actual_price
        name: Third Max Month Actual Price
        axisId: third_max_month.actual_price
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
      Product Family: third_max_month.product_family
      UPC: third_max_month.upc_code
    row: 2
    col: 0
    width: 8
    height: 6
  - name: Forecast ($)
    type: text
    title_text: Forecast ($)
    row: 0
    col: 5
    width: 14
    height: 2
  filters:
  - name: Product Family
    title: Product Family
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: demand_forecast
    explore: sku_data
    listens_to_filters: []
    field: sku_data.product_family
  - name: UPC
    title: UPC
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: demand_forecast
    explore: sku_data
    listens_to_filters: []
    field: sku_data.upc_code
