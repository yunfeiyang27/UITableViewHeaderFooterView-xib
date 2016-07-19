# UITableViewHeaderFooterView-xib
自定义tableview的section的头视图header/footer：
1、使用纯代码：一般可以直接用UITableViewHeaderFooterView类创建对象，因为系统提供的UITableViewHeaderFooterView类有重用机制。也可以自定义tableview的section的头视图header/footer的类，继承自UITableViewHeaderFooterView。用纯代码创建并返回可重用的 section 的 header / footer 和 用纯代码创建并返回可重用的UITableViewCell 是 相同的步骤

2、也可以用xib，xib里放的是UICollectionReusableView控件（可以绑定重用标识）
