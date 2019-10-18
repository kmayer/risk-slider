import { createSlice } from "redux-starter-kit";

const helloWorld = createSlice({
  name: "helloWorld",
  initialState: "",
  reducers: {
    updateName(state, action) {
      return action.payload;
    }
  }
});

export const { updateName } = helloWorld.actions;

export default helloWorld.reducer;
