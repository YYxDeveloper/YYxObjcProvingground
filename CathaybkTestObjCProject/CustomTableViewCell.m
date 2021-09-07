//
//  CustomTableViewCell.m
//  CathaybkTestObjCProject
//
//  Created by 呂子揚 on 2021/3/15.
//

#import "CustomTableViewCell.h"

@implementation CustomTableViewCell
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // configure control(s)
        self.descriptionLabel = [[UILabel alloc] initWithFrame:CGRectMake(5, 10, 300, 30)];
        self.descriptionLabel.textColor = [UIColor blackColor];
        self.descriptionLabel.font = [UIFont fontWithName:@"Arial" size:12.0f];
        self.descriptionLabel.text = @"aaasd;";
        [self settingThisSubViews];
        [self addThisSubViews];
        [self layoutThisSubViews];
    }
    return self;
}
-(void)settingThisSubViews{
    self.contentView.backgroundColor = [UIColor yellowColor];
}
-(void)addThisSubViews{
    [self.contentView addSubview:self.descriptionLabel];

}
-(void)layoutThisSubViews{
    UIEdgeInsets padding = UIEdgeInsetsMake(10, 10, 10, 10);

    [self.descriptionLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.contentView).with.insets(padding);
    }];
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
