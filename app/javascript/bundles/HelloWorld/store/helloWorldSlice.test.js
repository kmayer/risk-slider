import helloWorld, { updateName } from "./helloWordSlice";

test("responds to the action", () => {
    const action = { type: updateName.type, payload: "Hello, world." };

    expect(helloWorld("", action)).toBe("Hello, world.");
});
