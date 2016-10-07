class SearchBoxView extends React.Component {
  render() {
    const { onSearchChange, searchInput } = this.props;
    return(
      <form id="search-form" >
        <input
          id="search"
          type="text"
          placeholder="Search A Question"
          value={searchInput}
          onChange={onSearchChange}
        ></input>
        <i className="fa fa-search"></i>
      </form>
    );
  }
}
