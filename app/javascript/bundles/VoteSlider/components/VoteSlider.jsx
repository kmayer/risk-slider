import React from "react";
import { connect } from "react-redux";
import { actions } from "../store/voteSliderSlice";

const mapStateToProps = state => ({ votes: state.votes });

class VoteSliderComponent extends React.Component {
  render() {
    return (
      <div>
        <ul>
          {Object.keys(this.props.votes).map(metric => (
            <li>
              {metric} = {this.props.votes[metric]}
            </li>
          ))}
        </ul>
      </div>
    );
  }
}
export const { VoteSlider } = VoteSliderComponent;

export default connect(
  mapStateToProps,
  actions
)(VoteSliderComponent);
