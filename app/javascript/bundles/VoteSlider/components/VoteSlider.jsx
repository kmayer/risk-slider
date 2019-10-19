import React from "react";
import { connect } from "react-redux";
import ReactOnRails from "react-on-rails";
import { actions } from "../store/votesSlice";
import Slider from "./Slider";

const mapStateToProps = state => ({ votes: state.votes, url: state.url });

class VoteSliderComponent extends React.Component {
  render() {
    return (
      <div>
        <form className="simple_form" action={this.props.url} method="post">
          <input type="hidden" name="_method" value="put" />
          <input
            type="hidden"
            name="authenticity_token"
            value={ReactOnRails.authenticityToken()}
          />
          <div className="form-group">
            {Object.keys(this.props.votes).map(metric => (
              <div className="form-row" key={metric}>
                <Slider
                  name={metric}
                  value={this.props.votes[metric]}
                  vote={this.props.vote}
                />
              </div>
            ))}
            <button type="submit" className="btn btn-primary">
              Submit
            </button>
          </div>
        </form>
      </div>
    );
  }
}

export const { VoteSlider } = VoteSliderComponent;

export default connect(
  mapStateToProps,
  actions
)(VoteSliderComponent);
