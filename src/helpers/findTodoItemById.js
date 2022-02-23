export default function findTodoItemById(state, day, id) {
    for (let item of state.todo[day]) {
        if (item.id === id) {
            return state.todo[day].indexOf(item);
        }
    }
}