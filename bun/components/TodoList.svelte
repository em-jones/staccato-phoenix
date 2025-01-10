<script>
  // Define a Todo type using JSDoc for documentation purposes
  /**
   * @typedef {Object} Todo
   * @property {string} text
   * @property {boolean} completed
   */

  // Initialize an empty array for todos
  /** @type {Todo[]} */
  let todos = [];
  let newTodo = "";

  // Function to add a new todo
  function addTodo() {
    if (newTodo) {
      todos = [...todos, { text: newTodo, completed: false }];
      newTodo = "";
    }
  }

  // Function to check and uncheck the to do item
  function check(index) {
    todos = todos.map((todo, i) => 
      i === index ? { ...todo, completed: !todo.completed } : todo
    );
  }

  // Function to remove an item from the list of to do items
  function remove(index) {
    todos = todos.filter((_, i) => i !== index);
  }
</script>

  <style>
    h2 {
      font-size: 18px;
    }

    .container {
      margin: 10px 0 0 0;
    }

    ul {
      display: block;
      margin-top: 10px;
    }

    li{
      display: flex;
    }

    input {
      border: 1px solid black;
      border-radius: 5px;
      padding: 2px 5px;
    }

    button {
      border: 1px solid black;
      padding: 2px 5px;
      margin: 0 0 0 10px;
      border-radius: 5px;
    }

    .checkbox {
      border: 1px solid black;
      width: 13px;
      height: 13px;
      margin: 0 5px;
      cursor: pointer;
      display: flex;
      justify-content: center;
    }

    .checked {
      display: block;
      width: 12px;
      height: 12px;
      margin: -7px -3px 0 0;
    }

    .left {
      display: flex;
      align-items: center;
      justify-content: none;
    }

    .item:hover {
      background-color: #f3f2f2;
    }
    .item {
      display: flex;
      align-items: center;
      justify-content: space-between;
      width: 283px;
    }
    
  </style>
  
  <div class="container">
    <h2>To-Do List</h2>
    <input type="text" bind:value={newTodo} placeholder="Add a new task" />
    <button on:click={addTodo}>Add</button>
  
    <ul>
      {#each todos as { text, completed }, index}
        <div class=item>
          <div class=left>
            <div class=checkbox on:click={() => check(index)}>
              {#if completed}
                <div class=checked>x</div>
              {:else}
                <div></div>
              {/if}
            </div>
            <li>{text}</li>
          </div>
          <button on:click={() => remove(index)}>Remove</button>
        </div>
      {/each}
    </ul>
  </div>