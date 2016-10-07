class App extends React.Component {
  constructor() {
    super();
    this.state = {
      searchBox: ''
    }
    this.onSearchChange = this.onSearchChange.bind(this)
  }

  onSearchChange(event) {
    this.setState({ searchBox: event.target.value })
  }

  render() {
    return(
      <SearchBoxView  onSearchChange={this.onSearchChange}
      searchInput={this.state.searchBox}
      />
    );
  }
}
