class ProductsController < ApplicationController

	def index
		@products = products
	end

	private

	def products
		[
			{
				image: 'http://placehold.it/140x100',
				name: 'Name 1',
				price: '99.99',
				description: 'Lorem ipsum dolor sit amet,consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet,consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
			},
			{
				image: 'http://placehold.it/140x100',
				name: 'Name 2',
				price: '57.99',
				description: 'Lorem ipsum dolor sit amet,consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet,consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
			},
			{
				image: 'http://placehold.it/140x100',
				name: 'Name 3',
				price: '38.99',
				description: 'Lorem ipsum dolor sit amet,consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet,consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
			}
		]
	end
end
