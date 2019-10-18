import { createSlice } from "redux-starter-kit";

const votes = createSlice({
  name: "votes",
  initialState: { "defect_free": 0, "finish_fast": 0, "great_ux": 0, "lots_of_features": 0, "visually_stunning": 0 },
  reducers: {
    vote(state, action) {
      console.log(state, action);
      return state;
    }
  }
});

console.log(votes);

// Extract the action creators object and the reducer
const { actions, reducer } = votes
// Extract and export each action creator by name
export const { vote } = actions
// Export the reducer, either as a default or named export
export default reducer
