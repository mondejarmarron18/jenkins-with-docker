import { describe, expect, it } from "vitest";
import config from ".";

describe("config", () => {
  it("should be defined and a type of object", () => {
    expect(config).toBeTypeOf("object");
  });

  it("should have required properties and not be undefined nor empty string", () => {
    const properties = ["port"] as const;

    properties.forEach((property) => {
      expect(config).toHaveProperty(property);

      const value = config[property];

      expect(value).toBeTypeOf("string");
      expect(value).not.toBe("");
    });
  });
});
