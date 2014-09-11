# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

TestApp = angular.module "TestApp", []

TestApp.controller "IndexCtrl", ['$scope', ($scope) -> 
	$scope.movies = [{
		title: "The Crow", 
		rating: 5
		},
		{
		title: "Of Mice and Men", 
		rating: 4
		},
		{
		title: "Game of Thrones", 
		rating: 4
		},
		{
		title: "Coming to America", 
		rating: 4
		},
		{
		title: "21 Jump Street", 
		rating: 4
		}
	]
	$scope.removeMovie = (movie) ->
		$scope.movies.splice($scope.movies.indexOf(movie), 1)

	$scope.counter = 0
	$scope.pressed = -> 
		$scope.counter++

	$scope.hideWord = ->
		$scope.wordInput = ""
]

TestApp.filter 'reverse', ->
	(title) ->
		title.split("").reverse().join("")

