# bs_flutter_modal

Example: [`main.dart`](https://github.com/kholifanalfon/bs_flutter_modal/blob/main/example/lib/main.dart)

Use flutter bootstrap modal plugin to add dialogs to your site for lightboxes, user notifications, or completely custom content.

## Getting Started

Add the dependency in `pubspec.yaml`:

```yaml
dependencies:
  ...
  bs_flutter_modal: any
```

![Alt text](https://raw.githubusercontent.com/kholifanalfon/bs_flutter_modal/main/screenshot/example_modal_1.png "Screenshot Example Modal")
![Alt text](https://raw.githubusercontent.com/kholifanalfon/bs_flutter_modal/main/screenshot/example_modal_2.png "Screenshot Example Modal")

Modal will be show using `showDialog`, because `BsModal` is a `Dialog` widget

```dart
// ...
  BsButton(
    style: BsButtonStyle.primary,
    margin: EdgeInsets.only(right: 5.0, bottom: 10.0),
    label: Text('Centered Small Modal with No Radius'),
    onPressed: () => showDialog(context: context, builder: (context) => BsModal(
      context: context,
      dialog: BsModalDialog(
        size: BsModalSize.sm,
        mainAxisAlignment: MainAxisAlignment.center,
        child: BsModalContent(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          children: [
            BsModalContainer(title: Text('Content'), closeButton: true),
            BsModalContainer(
              child: Column(
                  children: [
                    Text('Content')
                  ]
              ),
            ),
            BsModalContainer(
              crossAxisAlignment: CrossAxisAlignment.end,
              actions: [
                BsButton(
                  style: BsButtonStyle.danger,
                  label: Text('Close Modal'),
                  prefixIcon: Icons.close,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            )
          ],
        ),
      ),
    )),
  )
// ...
```

#### Note
- `BsModalDialog` is backdrop layout
- `BsModalContent` is content from modal
- `BsModalContainer` is children from `BsModalContent`
- Change `size` properties to change modal size
- `BsModalContainer` can be use as modal-header, modal-body and modal-footer
- To set `BsModalContent` to centered, you can modify `mainAxisAlignment` on `BsModalDialog` properties