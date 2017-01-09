var Item = React.createClass({
	displayName: 'Item',

	render: function render() {
		return React.createElement(
			// 'div',
			// { className: 'Item', style: { backgroundImage: 'url(' + this.props.backdrop + ')' } },
			// React.createElement(
			'div',
			{ className: 'overlay' },
			React.createElement(
				'div',
				{ className: 'shop_adress' },
				this.props.title
			),
			React.createElement(
				'div',
				{ className: 'shop_price' },
				this.props.score,
				' / 10'
			),
			React.createElement(
				'div',
				{ className: 'shop_hours' },
				this.props.overview
			),
			React.createElement(ListToggle, null)
			// )
		);
	}
});
