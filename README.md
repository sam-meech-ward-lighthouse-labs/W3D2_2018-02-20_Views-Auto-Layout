# Views

## Re View Views 🤗

* Image View, Table View, Buttons, Text Field, Label, Collection View.

* When we initialize a view, the `initWithFrame:` method will end up being called.
	
## Frames and bounds (Geometry & Heirarchy)

Frame and bounds are both CGRects

A CGRect is a struct of CGPoint and CGSize.

* CGRect is a struct that we use to define location and size. 

```
CGRect frame = CGRectMake(<#CGFloat x#>, <#CGFloat y#>, <#CGFloat width#>, <#CGFloat height#>)
```

* `view.frame` is the view's position and size within the superview.n (20, 30, 50, 50);
* `view.bound` is the view's position and size within itself. (0, 0, 50, 50);

// The following are equivilent. 

[[UIView alloc] init];
[[UIView alloc] initWithFrame:CGRectZero];
[[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 0)];

You can adjust the position of the view using its `center` property.

view.center = CGPointMake(x, y);

## UIView Animations

* `CALayer`

The uiview draws all the contents to a CALayer.
The CAlayer is responsible for rendering everything and animations.

The follow are _almost_ equivilent
self.concreteView.backgroundColor;
self.concreteView.layer.backgroundColor;

```
self.concreteView.backgroundColor = [UIColor grayColor];
self.concreteView.layer.backgroundColor = [UIColor grayColor].CGColor;
```

## Auto Layout

* Create constraints using the `NSLayoutConstraint`

* All views that get constained to eachother must be within the same adjacent hierarchy. This means that they must be within the same superview. Or constrain to the superview. 
* sibling or parent or child.

* You must add a view to the view hierarchy before you add any constraints.
* You must set `translatesAutoresizingMaskIntoConstraints` to NO before you add any constraints.
* Create a constraint using the `NSLayoutConstraint` class method

```
NSLayoutConstraint * topConstraint =
  [NSLayoutConstraint
   constraintWithItem:colorView
   attribute:NSLayoutAttributeTop
   relatedBy:NSLayoutRelationEqual
   toItem:self.view
   attribute:NSLayoutAttributeTop
   multiplier:1.0
   constant:20.0];
   ```

* Remember to activate the constraint 

```
topConstraint.active = YES;
```