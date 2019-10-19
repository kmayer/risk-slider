import React from "react";

class Slider extends React.Component {
  handleChange = e => {
    e.stopPropagation();
    this.props.vote({ name: this.props.name, value: e.target.value });
  };

  render() {
    return (
      <div>
        <label key={this.props.name} htmlFor={this.props.name}>
          {this.props.name}
        </label>

        <input
          id={this.props.name}
          type="range"
          name={this.props.name}
          value={this.props.value}
          min="0"
          max="10"
          step="1"
          onChange={this.handleChange}
        />

        <span>{this.props.value}</span>
      </div>
    );
  }
}

export default Slider;
