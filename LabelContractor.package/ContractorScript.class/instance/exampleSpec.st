examples
exampleSpec

	<script: 'self new exampleSpec' >
	SpListPresenter new
    items: Smalltalk allClasses;
    display: [ :item | item name contractWith: PickFirstLetters ];
    openWithSpec
	