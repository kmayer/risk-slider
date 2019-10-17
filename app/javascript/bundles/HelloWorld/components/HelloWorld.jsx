import React from "react";
import { connect } from "react-redux";
import PropTypes from "prop-types";
import { updateName } from "../store/helloWordSlice";

const mapDispatch = { updateName };

// Which part of the Redux global state does our component want to receive as props?
const mapStateToProps = state => ({ name: state.name });

const HelloWorldComponent = ({ name, updateName }) => {
  return (
    <div>
      <h3>Hello, {name}!</h3>
      <hr />
      <form>
        <label htmlFor="name">Say hello to:</label>
        <input
          id="name"
          type="text"
          value={name}
          onChange={e => updateName(e.target.value)}
        />
      </form>
    </div>
  );
};

HelloWorldComponent.propTypes = {
  name: PropTypes.string.isRequired,
  updateName: PropTypes.func.isRequired
};

export const { HelloWorld } = HelloWorldComponent;

// Note that we don't use HelloWorldComponent, but the redux "connected" version of it.
// See https://github.com/reactjs/react-redux/blob/master/docs/api.md#examples
export default connect(
  mapStateToProps,
  mapDispatch
)(HelloWorldComponent);
