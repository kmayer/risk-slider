import React from "react";
import { connect } from "react-redux";
import PropTypes from "prop-types";
import { actions } from "../store/voteSliderSlice";

const mapStateToProps = state => ({ metrics: state.metrics });

class VoteSliderComponent extends React.Component {
  static propTypes = {
    metrics: PropTypes.object.isRequired,
    // vote: PropTypes.func.isRequired
  };

  state = {
    metrics: {}
  };

  render() {
    return (
      <div>
        <ul>
          {Object.keys(this.props.metrics).map(metric => (
            <li>{metric} = {this.props.metrics[metric]}</li>
          )) }
        </ul>
      </div>
    );
  }
}
export const { VoteSlider } = VoteSliderComponent;

export default VoteSliderComponent;

// export default connect(
//   mapStateToProps,
//   actions
// )(VoteSliderComponent);
